
import 'package:blink/app/pages/splash/splash_page.dart';
import 'package:blink/app/repositories/login_repository.dart';
import 'package:blink/app/shared/custom_dio/interceptions.dart';
import 'package:dio/dio.dart';

import 'pages/splash/splash_controller.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';

import 'pages/slide_image/slide_image_controller.dart';
import 'pages/slide_video/slide_video_controller.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:blink/app/app_widget.dart';
import 'package:blink/app/modules/home/home_module.dart';

import 'shared/constrants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $SplashController,
        $SlideImageController,
        $SlideVideoController,
        $CarouselController,
        $AppController,
        Bind((i) => SplashController(repository: i.get<LoginRepository>())),
        Bind((i) => LoginRepository(
            dio: i.get<Dio>()..interceptors.add(CustomIntercetors()))),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_LOGIN)))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (__, args) => SplashPage()),
        ModularRouter('/home', module: HomeModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

