import 'dart:io';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/arquivo_repository.dart';
import 'package:blink/app/repositories/template_repository.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'arquivo_service.dart';

class TemplateService {
  TemplateRepository tempRepo;
  ArquivoRepository arquivoRepo;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  TemplateService(
      {@required this.tempRepo,
      @required this.arquivoRepo,
      @required this.arquivoService});

  Future<List<Template>> saveTemplate(int identificacao) async {
    int sizeDirectory = await load();

    if (sizeDirectory == 0) {
      var template = await this.tempRepo.downloadTemplate(identificacao);
      if (template != null) {
        for (var item in template) {
          await Database.instance.templateDAO.addValueTemplate(item);
        }
        await this.downloadMidias(template);
      }
      return template;
    } else {
      var template = this.tempRepo.downloadTemplate(identificacao);
      return template;
    }
  }

  Future downloadMidias(List<Template> lista) async {
    if (lista != null && lista.isNotEmpty) {
      List<int> arquivo;
      //List<Future> futures = [];
      for (var template in lista) {
        print('VAI BAIXAR ARQUIVO ${template.idArquivo}');
        arquivo =
            await arquivoRepo.downloadTemplate(template, (received, total) {
          //print('DOWNLOAD $received - $total');
        });
        //futures.add(arquivoService.salvarArquivo(
        //   arquivo, conteudo.idArquivo, conteudo.nomeArquivo));
        await arquivoService.salvarArquivo(
            arquivo, template.idArquivo, template.nomeArquivo);
        print('Baixou arquivo ${template.idArquivo}');
      }
      //await Future.wait(futures).then((_) {
      // print('TERMINOU TODOS');
      //});
    }
  }

  Future<int> load() async {
    this.files = [];

    Directory directory = await getApplicationDocumentsDirectory();
    List<FileSystemEntity> files = directory.listSync();

    print(directory.path);

    for (FileSystemEntity file in files) {
      if (file is File) {
        String ext = extension(file.path);
        // Verifica se é uma imagem ou video e adiciona na lista
        if (this.controller.extVideo.contains(ext) ||
            controller.extImg.contains(ext)) {
          this.files.add(file);
        }
      }
    }
    print('Qtd. Imagem/video: ' + this.files.length.toString());
    return this.files.length;
  }
}
