import 'dart:developer';
import 'dart:io';

import 'package:blink/app/modules/home/home_controller.dart';
import 'package:blink/app/pages/splash/splash_page.dart';
import 'package:blink/app/repositories/arquivo_repository.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:blink/app/repositories/login_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:blink/app/shared/CusotmInterceptor.dart';
import 'package:blink/app/shared/interceptions.dart';
import 'package:dio/adapter.dart';
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
        $HomeController,
        $AppController,
        // Login
        Bind((i) => SplashController(
            service: i.get<LoginService>(),
            contService: i.get<ConteudoService>(),
            )),
        Bind((i) => LoginRepository(
            dio: i.get<Dio>()..interceptors.add(CustomIntercetors()))),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_LOGIN))),
        Bind((i) => LoginService(loginRep: i.get<LoginRepository>())),
        // Equipamentos
        Bind((i) => ConteudoRepository(
            dio: i.get<Dio>()..interceptors.add(CustomIntercetorsConteudo()))),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_CONTEUDO))),
        Bind((i) => ArquivoService()),
        Bind((i) => ConteudoService(
          conteudoRepo: i.get<ConteudoRepository>(), 
          arquivoRepo: i.get<ArquivoRepository>(), 
          arquivoService: i.get<ArquivoService>())
        ),
        // Mídias
        Bind((i) => ArquivoRepository(
            dio: i.get<Dio>()..interceptors.add(CustomIntercetorsConteudo()))),
        //Bind((i) => Dio(BaseOptions(baseUrl: ULR_DOWN_MIDIAS))),
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
