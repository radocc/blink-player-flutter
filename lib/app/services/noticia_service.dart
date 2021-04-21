import 'dart:io';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/arquivo_repository.dart';
import 'package:blink/app/repositories/noticia_repository.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'arquivo_service.dart';

class NoticiaService {
  NoticiaRepository noticiaRepo;
  ArquivoRepository arquivoRepo;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;
  final _urlImage1 =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Orange-Whole-%26-Split.jpg/1920px-Orange-Whole-%26-Split.jpg';

  NoticiaService(
      {@required this.noticiaRepo,
      @required this.arquivoRepo,
      @required this.arquivoService});

  Future<List<Noticia>> saveNoticias(int identificacao) async {
    int sizeDirectory = await load();

    if (sizeDirectory == 0) {
      var noticia = await this.noticiaRepo.downloadNoticia(identificacao);
      if (noticia != null) {
        for (var item in noticia) {
          await Database.instance.noticiaDAO.saveValueNotice(item);
        }
        await this.downloadMidias(noticia);
      }
      return noticia;
    } else {
      var noticia = this.noticiaRepo.downloadNoticia(identificacao);
      return noticia;
    }
  }

  Future downloadMidias(List<Noticia> lista) async {
    if (lista != null && lista.isNotEmpty) {
      List<int> arquivo;
      //List<Future> futures = [];
      for (var noticia in lista) {
        print('VAI BAIXAR ARQUIVO ${noticia.idArquivo}');
        if (noticia.idArquivo != null) {
          arquivo =
              await arquivoRepo.downloadNoticia(noticia, (received, total) {
            //print('DOWNLOAD $received - $total');
          });
          //futures.add(arquivoService.salvarArquivo(
          //   arquivo, conteudo.idArquivo, conteudo.nomeArquivo));
          await arquivoService.salvarArquivo(
              arquivo, noticia.idArquivo, noticia.nomeArquivo);
          print('Baixou arquivo ${noticia.idArquivo}');
        } else {
          //Rever
          await savePhoto();
        }
      }
      //await Future.wait(futures).then((_) {
      // print('TERMINOU TODOS');
      //});
    }
  }

  Future<void> savePhoto() async {
    //Pego imagem
    final response = await get(_urlImage1);
    // Pego nome da Imagem
    final imageName = basename(_urlImage1);
    // Pego o dir
    final appDir = (await getApplicationDocumentsDirectory()).path;
    // Pego o dir
    // final dir = '${appDir.path}/blink_tv';

    // Salvo a imagem no dir
    // Uso para exibir a imagem
    final localPath = join(appDir, imageName);

    // Download
    final imageFile = File(localPath);
    if (imageFile.existsSync()) {
      print('Ja existe essa foto');
      await imageFile.writeAsBytes(response.bodyBytes, mode: FileMode.append);
    } else {
      await imageFile.writeAsBytes(response.bodyBytes);
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
