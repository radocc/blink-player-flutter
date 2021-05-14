import 'dart:io';

import 'package:blink/app/components/touch_left_screen.dart';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/models/enuns/tipoconteudo_enum.dart';
import 'package:blink/app/pages/slide_default/slide_default_page.dart';
import 'package:blink/app/pages/slide_image/slide_image_page.dart';
import 'package:blink/app/pages/slide_loteria/slide_loteria_page.dart';
import 'package:blink/app/pages/slide_noticia/slide_noticia_page.dart';
import 'package:blink/app/pages/slide_previsao_tempo/slide_previsao_tempo.dart';
import 'package:blink/app/pages/slide_video/slide_video_page.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
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
  List<ConteudoTemplateModel> filesConteudo;
  ConteudoDAO dao = Database.instance.conteudoDAO;
  ConteudoVisualizadoDAO visualizadoDAO =
      Database.instance.conteudoVisualizadoDAO;
  FileSystemEntity file;

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
    this.filesConteudo = [];

    //
    // Lista todos os arquivos e pastas do diretorio passado na classe
    // anterior
    //
    Directory directory = await widget.dir;
    //List<FileSystemEntity> files = directory.listSync();
    this.filesConteudo = await dao.getAllConteudoWithTemplate();

    //
    // DEBUG
    //
    print(directory.path);

    //for (FileSystemEntity file in files) {
    //
    // Verifica se a entidade é um arquivo

    this.filesConteudo.forEach((e) async {
      if (e.conteudo.tipo == TipoConteudo.NOTICIAS.index) {
      } else if (e.conteudo.nomeArquivo == null) {
        file = File('${directory.path}/${e.template.nomeArquivo}');
      } else {
        file = File('${directory.path}/${e.conteudo.nomeArquivo}');
      }

      if (file is File) {
        String ext = extension(file.path);
        //
        // Verifica se é uma imagem ou video e adiciona na lista
        //
        if (controller.extVideo.contains(ext) ||
            controller.extImg.contains(ext)) {
          e.file = file;
          this.files.add(file);
        }
      }
    });
    return true;
  }
  // }

  //
  // Proximo slide
  //
  void nextPage() {
    //
    // Ultima pagina, volta o slide para primeira pagina
    //
    if (_controller.page == files.length - 1) {
      //_controller.jumpTo(0);
      _controller.jumpToPage(0);
    }
    //
    // Avança para o proximo slide
    //
    else {
      _controller.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    }
    /**
     * Rotina para registrar a visualização do Conteudo
     */
    // visualizadoDAO.registrarVisualizacao(conteudoTemplate.conteudo.id, null);
  }

  //
  // Verifica se é um slide de imagem ou de video
  //
  Widget getItem(ConteudoTemplateModel conteudoTemplate) {
    //String ext = extension(conteudoTemplate.file.path);
    // visualizadoDAO.registrarVisualizacao(conteudoTemplate.conteudo.id, null);

    var tipo = conteudoTemplate.conteudo.tipo;
    if (tipo == TipoConteudo.VIDEO.index) {
      return SlideVideoPage(conteudoTemplate, next: nextPage);
    } else if (tipo == TipoConteudo.IMAGENS.index) {
      return SlideImagePage(conteudoTemplate, next: nextPage);
    } else if (conteudoTemplate.conteudo.tipo == TipoConteudo.PADRAO.index) {
      return SlideDefaultPage(conteudoTemplate, next: nextPage);
    } else if (conteudoTemplate.conteudo.tipo == TipoConteudo.NOTICIAS.index) {
      return SlideNoticiaPage(conteudoTemplate, next: nextPage);
    } else if (conteudoTemplate.conteudo.tipo == TipoConteudo.LOTERIAS.index) {
      return SlideLoteriaPage(conteudoTemplate, next: nextPage);
    } else if (tipo == TipoConteudo.PREVISAOTEMPO.index) {
      return SlidePrevisaoTempoPage(conteudoTemplate, next: nextPage);
    }
    return Container();
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

          return Scaffold(
            body: ConnectivityBuilder(
              builder: (context, isConnection, status) {
                print('CONEXAO ${status.toString()}');
                return Stack(
                  children: <Widget>[
                    PageView(
                      controller: _controller,
                      children: [
                        //
                        // slide de imagem e video
                        //
                        for (ConteudoTemplateModel conteudo
                            in this.filesConteudo)
                          getItem(conteudo),
                      ],
                    ),
                    Positioned(
                      child: isConnection == false
                          ? TouchLeftScreen(topSize: 0)
                          : Container(),
                    )
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
