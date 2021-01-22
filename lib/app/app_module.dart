import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/modules/carousel_itens/carousel_itens_controller.dart';
import 'package:blink/app/modules/video_players/video_players_controller.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:blink/app/app_widget.dart';
import 'package:blink/app/modules/home/home_module.dart';

import 'modules/carousel/carousel_module.dart';
import 'modules/video_players/video_players_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        $CarouselController,
        $CarouselItensController,
        $VideoPlayersController
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: HomeModule()),
        ModularRouter('/fotos', module: CarouselModule()),
        ModularRouter('/videos', module: VideoPlayersModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
