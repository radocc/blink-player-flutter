
import 'package:blink/app/modules/video_players/video_players_controller.dart';
import 'package:blink/app/modules/video_players/video_players_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class VideoPlayersModule extends ChildModule {
  @override
  List<Bind> get binds => [
      $VideoPlayersController
      ];

  @override
  List<ModularRouter> get routers => [
     ModularRouter(Modular.initialRoute, child: (_, args) => VideoPlayersPage()),
  ];

  static Inject get to => Inject<VideoPlayersModule>.of();
}
