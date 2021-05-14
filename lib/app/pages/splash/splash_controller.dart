import 'dart:async';

import 'package:blink/app/components/splash_login.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:blink/app/shared/events.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final LoginService service;
  final SincronizaService syncService;

  StreamSubscription<bool> streamEquipBody;
  StreamController<Equipamento> streamPostServer =
      StreamController<Equipamento>();

  _SplashControllerBase(this.service, this.syncService);

  onInit() async {
    streamEquipBody = Events.equipBody.stream.listen((value) {
      print('STREAM: $value');
      if (value) {
        login();
      } 
    });

    // login();
  }

  Future sincronizar() async {
    await syncService.iniciar();
    return true;
  }
 
  Future<Equipamento> login() async {
    try {
      var response = await service.logar();
      streamPostServer.add(response);
      return response;
      
    } on DioError catch (e) {
      print(e.response.statusCode);
      streamPostServer.addError(e);
      throw Exception("Exception occured: $e");
    }
  }
 
  dispose() {
    streamEquipBody.cancel();
  }
}
