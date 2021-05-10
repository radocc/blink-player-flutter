
import 'package:blink/app/services/login_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'ative_player_controller.g.dart';

@Injectable()
class AtivePlayerController = _AtivePlayerControllerBase with _$AtivePlayerController;

abstract class _AtivePlayerControllerBase with Store {

  LoginService loginService;

  _AtivePlayerControllerBase(this.loginService);

  Future<void> verificar() async {
    this.loginService.logar();
  }
}
