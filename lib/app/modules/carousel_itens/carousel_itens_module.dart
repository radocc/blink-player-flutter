import 'package:blink/app/modules/carousel_itens/carousel_itens_controller.dart';
import 'package:blink/app/modules/carousel_itens/carousel_itens_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CarouselItensModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $CarouselItensController
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => CarouselItensPage()),
  ];

  static Inject get to => Inject<CarouselItensModule>.of();
}
