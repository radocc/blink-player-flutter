import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_player/video_player.dart';
import 'slide_video_controller.dart';

class SlideVideoPage extends StatefulWidget {
  final Function next;
  final File url;
  const SlideVideoPage(this.url, {@required this.next});

  @override
  _SlideVideoPageState createState() => _SlideVideoPageState();
}

class _SlideVideoPageState
    extends ModularState<SlideVideoPage, SlideVideoController> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    //
    // Controlador do video
    //
    _controller = VideoPlayerController.file(widget.url)
      ..initialize().then((value) {
        _controller.addListener(() {
          setState(() {
            //
            // Quando acabar o video
            //
            if (!_controller.value.isPlaying &&
                _controller.value.initialized &&
                (_controller.value.duration == _controller.value.position)) {
              //
              // Próximo slide
              //
              widget.next();
            }
          });
        });
      })
      ..play();
  }

  @override
  void dispose() {
    //
    // Elimina o controlador
    //
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    // Define os widget que serão exibido no slide de Video
    //
    // Full Screan
    // return Container(
    //   child: AspectRatio(
    //     aspectRatio: _controller.value.aspectRatio,
    //     child: Stack(
    //       alignment: Alignment.bottomCenter,
    //       children: <Widget>[
    //         VideoPlayer(_controller),
    //       ],
    //     ),
    //   ),
    // );
    // 
    // Video não esticado
     return FittedBox(
      fit: BoxFit.contain,
      child: SizedBox(
        height: _controller.value.size?.height ?? 0,
        width: _controller.value.size?.width ?? 0,
        child: VideoPlayer(_controller),
      ),
    );

  }
}
