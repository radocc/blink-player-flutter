import 'package:blink/app/modules/carousel/carousel_controller.dart';

import 'pages/slide_image/slide_image_controller.dart';
import 'pages/slide_video/slide_video_controller.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:blink/app/app_widget.dart';
import 'package:blink/app/modules/home/home_module.dart';


class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $SlideImageController,
        $SlideVideoController,
        $CarouselController,
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
