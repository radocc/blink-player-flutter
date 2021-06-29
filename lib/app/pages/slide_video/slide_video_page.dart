import 'dart:io';

import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_player/video_player.dart';
import 'slide_video_controller.dart';

class SlideVideoPage extends StatefulWidget {
  final Function next;
  final ConteudoTemplateModel conteudoTemplate;
  final Future<Directory> dir;
  const SlideVideoPage(this.conteudoTemplate,
      {@required this.next, @required this.dir});

  @override
  _SlideVideoPageState createState() => _SlideVideoPageState();
}

class _SlideVideoPageState
    extends ModularState<SlideVideoPage, SlideVideoController> {
  Future<VideoPlayerController> _controller;
  ConteudoVisualizadoDAO visualizadoDAO;
  File arquivo;
  @override
  void initState() {
    super.initState();
    visualizadoDAO = Database.instance.conteudoVisualizadoDAO;
    visualizadoDAO.registrarVisualizacao(
        widget.conteudoTemplate.conteudo.id, null);
    //
    // Controlador do video
    //
    widget.dir.then((directory) async {
      arquivo = File(
          '${directory.path}/${widget.conteudoTemplate.conteudo.nomeArquivo}');
      _controller = Future.value(VideoPlayerController.file(arquivo)
        ..initialize().then((value) async {
          _controller.then((ctrl) => {
                if (widget.conteudoTemplate.conteudo.audio == 1) {
                    ctrl.setVolume(0.0)
                },
                ctrl.addListener(() {
                  setState(() {
                    //
                    // Quando acabar o video
                    //
                    if (!ctrl.value.isPlaying &&
                        ctrl.value.isInitialized &&
                        (ctrl.value.duration == ctrl.value.position)) {
                      //
                      // Próximo slide
                      //
                      widget.next();
                    }
                  });
                })
              });
        })
        ..play());
    });
  }

  @override
  void dispose() {
    //
    // Elimina o controlador
    //
    _controller.then((ctrl) => {ctrl.dispose()});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    // Define os widget que serão exibido no slide de Video

    // Full Screan
    return FutureBuilder<VideoPlayerController>(
        future: _controller,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: AspectRatio(
                aspectRatio: snapshot.data.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    VideoPlayer(snapshot.data),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        });

    // Video não esticado
    //  return FittedBox(
    //   fit: BoxFit.contain,
    //   child: SizedBox(
    //     height: _controller.value.size?.height ?? 0,
    //     width: _controller.value.size?.width ?? 0,
    //     child: VideoPlayer(_controller),
    //   ),
    // );
  }
}
