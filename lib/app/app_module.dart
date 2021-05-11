import 'package:blink/app/app_widget.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/modules/home/home_controller.dart';
import 'package:blink/app/modules/home/home_module.dart';
import 'package:blink/app/pages/splash/splash_page.dart';
import 'package:blink/app/repositories/arquivo_repository.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:blink/app/repositories/dio/custom_dio.dart';
import 'package:blink/app/repositories/login_repository.dart';
import 'package:blink/app/repositories/loteria_resultado_repository.dart';
import 'package:blink/app/repositories/noticia_repository.dart';
import 'package:blink/app/repositories/previsao_tempo_imagem_repository.dart';
import 'package:blink/app/repositories/previsao_tempo_repository.dart';
import 'package:blink/app/repositories/sequencia_conteudo_repository.dart';
import 'package:blink/app/repositories/template_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/conexao_service.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:blink/app/services/loteria_resultado_service.dart';
import 'package:blink/app/services/noticia_service.dart';
import 'package:blink/app/services/previsao_imagem_tempo_service.dart';
import 'package:blink/app/services/previsao_tempo_service.dart';
import 'package:blink/app/services/sequencia_conteudo_service.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:blink/app/services/template_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'modules/ative_player/ative_player_controller.dart';
import 'pages/slide_image/slide_image_controller.dart';
import 'pages/slide_video/slide_video_controller.dart';
import 'pages/slide_previsao_tempo/slide_previsao_tempo_controller.dart';
import 'pages/splash/splash_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $SplashController,
        $SlideImageController,
        $SlideVideoController,
        $SlidePrevisaoTempoController,
        $CarouselController,
        $AtivePlayerController,
        $HomeController,
        $AppController,
        $CustomDIO,
        Bind((i) => SincronizaService(
              i.get<ConteudoService>(),
              i.get<NoticiaService>(),
              i.get<TemplateService>(),
              i.get<ArquivoService>(),
              i.get<PrevisaoImagemTempoService>(),
              i.get<PrevisaoTempoService>(),
              i.get<SequenciaConteudoService>(),
              i.get<LoteriaResultadoService>()
            )),
        Bind((i) => SplashController(
              i.get<LoginService>(),
              i.get<SincronizaService>(),
            )),
        Bind((i) => LoginRepository()),
        Bind((i) => LoginService(loginRep: i.get<LoginRepository>())),
        Bind((i) => ConteudoRepository()),
        Bind((i) => ArquivoService(i.get<ArquivoRepository>())),
        Bind((i) => ConteudoService(i.get<ConteudoRepository>(), i.get<ArquivoService>())),
        Bind((i) => ConexaoService(), lazy: false),
        Bind((i) => ArquivoRepository()),
        Bind((i) => NoticiaService(i.get<NoticiaRepository>())),
        Bind((i) => NoticiaRepository()),
        Bind((i) => TemplateService(i.get<TemplateRepository>(), i.get<ArquivoService>())),
        Bind((i) => TemplateRepository()),
        Bind((i) =>
            PrevisaoImagemTempoService(i.get<PrevisaoTempoImagemRepository>(), i.get<ArquivoService>())),
        Bind((i) => PrevisaoTempoImagemRepository()),
        Bind((i) => PrevisaoTempoService(i.get<PrevisaoTempoRepository>(), i.get<ArquivoService>())),
        Bind((i) => PrevisaoTempoRepository()),
        Bind((i) => SequenciaConteudoService(i.get<SequenciaConteudoRepository>())),
        Bind((i) => SequenciaConteudoRepository()),
        Bind((i) => LoteriaResultadoService(i.get<LoteriaResultadoRepository>())),
        Bind((i) => LoteriaResultadoRepository()),
        
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
