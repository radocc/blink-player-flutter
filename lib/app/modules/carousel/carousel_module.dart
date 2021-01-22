import 'package:flutter_modular/flutter_modular.dart';

import 'carousel_controller.dart';
import 'carousel_page.dart';

class CarouselModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $CarouselController
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => CarouselPage()),
  ];

  static Inject get to => Inject<CarouselModule>.of();
}
