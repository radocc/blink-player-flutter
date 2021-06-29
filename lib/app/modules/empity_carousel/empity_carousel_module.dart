import 'package:blink/app/modules/empity_carousel/empity_carousel_page.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'empity_carousel_controller.dart';

class EmpityCarouselModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => EmpityCarouselController(i.get<SincronizaService>()))
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => EmpityCarouselPage()),
  ];

  static Inject get to => Inject<EmpityCarouselModule>.of();
}
