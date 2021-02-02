import 'dart:io';

import 'package:blink/app/repositories/login_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:platform_device_id/platform_device_id.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  LoginRepository repository;

  _SplashControllerBase({this.repository}) {
    postServer();
  }

  Future<int> postServer() async {
    try {
      String deviceId;
      String linuxId;
      if (Platform.isAndroid) {
        deviceId = await PlatformDeviceId.getDeviceId;
        var reponse = await repository.postServer(deviceId);
        return reponse;
      } else if (Platform.isLinux) {
        linuxId = await PlatformDeviceId.getDeviceId;
        var reponse = await repository.postServer(linuxId);
        return reponse;
      }
    } catch (e) {
      print(e.toString());
      //throw (e.toString());
    }
  }

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
