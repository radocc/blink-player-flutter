import 'dart:io';

import 'package:blink/app/pages/slide_image/slide_image_page.dart';
import 'package:blink/app/pages/slide_video/slide_video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';
import 'carousel_controller.dart';

class CarouselPage extends StatefulWidget {
  final Future<Directory> dir;
  const CarouselPage({Key key, @required this.dir}) : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState
    extends ModularState<CarouselPage, CarouselController> {
  PageController _controller;
  List<File> files;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //
  // Busca a lista de arquivos com imagens e videos
  //
  Future<bool> load() async {
    //
    // Armazenamento de imagem e video que será retornado
    //
    this.files = [];
    //
    // Lista todos os arquivos e pastas do diretorio passado na classe
    // anterior
    //
    Directory directory = await widget.dir;
    List<FileSystemEntity> files = directory.listSync();

    //
    // DEBUG
    //
    print(directory.path);

    for (FileSystemEntity file in files) {
      //
      // Verifica se a entidade é um arquivo
      //
      if (file is File) {
        String ext = extension(file.path);
        //
        // Verifica se é uma imagem ou video e adiciona na lista
        //
        if (controller.extVideo.contains(ext) || controller.extImg.contains(ext)) {
          this.files.add(file);
        }
      }
    }
    return true;
  }

  //
  // Proximo slide
  //
  void nextPage() {
    //
    // Ultima pagina, volta o slide para primeira pagina
    //
    if (_controller.page == files.length - 1) {
      _controller.animateTo(
        0,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
    //
    // Avança para o proximo slide
    //
    else {
      _controller.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }

  //
  // Verifica se é um slide de imagem ou de video
  //
  Widget getItem(File arquivo) {
    String ext = extension(arquivo.path);
    //
    // Slide de video
    //
    if (controller.extVideo.contains(ext)) {
      return SlideVideoPage(arquivo, next: nextPage);
    }
    //
    // Slide de imagem
    //
    if (controller.extImg.contains(ext)) {
      return SlideImagePage(arquivo, next: nextPage);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Future para listar os arquivos e separar em imagem e video
      body: FutureBuilder<bool>(
        future: load(),
        builder: (context, snap) {
          if (snap.hasData == false) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          // Area do Carousel
          return PageView(
            controller: _controller,
            children: [
              //
              // slide de imagem e video
              //
              for (File arquivo in this.files) getItem(arquivo),
            ],
          );
        },
      ),
    );
  }
}
