import 'package:blink/app/modules/ative_player/ative_player_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'ative_player_controller.dart';

class AtivePlayerModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $AtivePlayerController
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => AtivePlayerPage()),
  ];

  static Inject get to => Inject<AtivePlayerModule>.of();
}
