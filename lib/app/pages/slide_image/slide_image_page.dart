import 'dart:io';

import 'package:blink/app/shared/screen_size.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'slide_image_controller.dart';

//
// Tempo para passar o slide do carousel
//
const nextDuration = Duration(seconds: 10);

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

    ScreenSize controller = ScreenSize();

    //WUXGA - 1920X1200 -- Ok
    if (controller.isDesktopXl(context: context)) {
      return Container(
        child: Image.file(
          this.widget.url,
          //fit: BoxFit.cover,
        ),
      );
    }
    //720p 1280x720 -- Ok //1080p 1920x1080 -- Ok
    if (controller.isDesktopLg(context: context)) {
      //contain
      return Container(
        child: Image.file(
          this.widget.url,
          fit: BoxFit.cover,
        ),
      );
    }
    //2K - 2048x[unspecified] -- Ok
    if (controller.isDesktopLgDown(context: context)) {
      return Container(
        child: Image.file(
          this.widget.url,
          //fill
          fit: BoxFit.cover,
        ),
      );
    } // Mobile -- Ok
    else {
      //Usado contain ao invez do cover para ajustar a foto ao tamanho da tela
      return Container(
        child: Image.file(
          this.widget.url,
          fit: BoxFit.contain,
        ),
      );
    }
  }
}
