import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'slide_image_controller.dart';

//
// Tempo para passar o slide do carousel
//
const nextDuration = Duration(seconds: 5);

class SlideImagePage extends StatefulWidget {
  final Function next;
  final File url;
  const SlideImagePage(this.url, {@required this.next});

  @override
  _SlideImagePageState createState() => _SlideImagePageState();
}

class _SlideImagePageState
    extends ModularState<SlideImagePage, SlideImageController> {
  @override
  void initState() {
    super.initState();
    Future.delayed(nextDuration, () {
      //
      // Proximo slide
      //
      if (this.mounted) {
        widget.next();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    // Define os widget que serão exibido no slide de imagem
    //
    return Container(
      child: Image.file(
        this.widget.url,
        fit: BoxFit.cover,
      ),
    );
  }
}
