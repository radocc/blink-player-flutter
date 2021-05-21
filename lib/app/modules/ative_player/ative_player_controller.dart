import 'dart:async';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'ative_player_controller.g.dart';

@Injectable()
class AtivePlayerController = _AtivePlayerControllerBase
    with _$AtivePlayerController;

abstract class _AtivePlayerControllerBase with Store {
  LoginService loginService;

  _AtivePlayerControllerBase(this.loginService);

  // Future<Equipamento> verificar() async {
  //   this.loginService.logar();
  // }


  Future<Equipamento> verificar() async {
    var response = await loginService.logar();
    return response;
  }

}
