import 'dart:async';

import 'package:blink/app/services/sincroniza_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'empity_carousel_controller.g.dart';

@Injectable()
class EmpityCarouselController = _EmpityCarouselControllerBase
    with _$EmpityCarouselController;

abstract class _EmpityCarouselControllerBase with Store {
  SincronizaService sincService;

  _EmpityCarouselControllerBase(this.sincService);

  Future sincronizar() async {
    await sincService.iniciar();
  }

}
