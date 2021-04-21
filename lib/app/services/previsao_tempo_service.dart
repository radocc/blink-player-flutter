import 'dart:io';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/arquivo_repository.dart';
import 'package:blink/app/repositories/previsao_tempo_repository.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'arquivo_service.dart';

class PrevisaoTempoService {
  PrevisaoTempoRepository prevRepo;
  ArquivoRepository arquivoRepo;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  PrevisaoTempoService(
      {@required this.prevRepo,
      @required this.arquivoRepo,
      @required this.arquivoService});

  Future<List<PrevisaoImagemTempo>> savePrevisaoTempo(int identificacao) async {
    int sizeDirectory = await load();

    if (sizeDirectory == 0) {
      var previsaoTempo = await this.prevRepo.downloadPrevisaoTempo(identificacao);
      if (previsaoTempo != null) {
        for (var item in previsaoTempo) {
          await Database.instance.previsaoTempoDAO.addValuePrevisaoTempo(item);
        }
        await this.downloadMidias(previsaoTempo);
      }
      return previsaoTempo;
    } else {
      var template = this.prevRepo.downloadPrevisaoTempo(identificacao);
      return template;
    }
  }

  Future downloadMidias(List<PrevisaoImagemTempo> lista) async {
    if (lista != null && lista.isNotEmpty) {
      List<int> arquivo;
      //List<Future> futures = [];
      for (var previsaoTempo in lista) {
        print('VAI BAIXAR ARQUIVO ${previsaoTempo.idArquivo}');
        arquivo =
            await arquivoRepo.downloadPrevisaoTempo(previsaoTempo, (received, total) {
          //print('DOWNLOAD $received - $total');
        });
        //futures.add(arquivoService.salvarArquivo(
        //   arquivo, conteudo.idArquivo, conteudo.nomeArquivo));
        await arquivoService.salvarArquivo(
            arquivo, previsaoTempo.idArquivo, previsaoTempo.nomeArquivo);
        print('Baixou arquivo ${previsaoTempo.idArquivo}');
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
