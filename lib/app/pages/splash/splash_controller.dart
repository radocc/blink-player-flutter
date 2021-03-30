import 'dart:async';
import 'dart:io';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  LoginService service;
  ConteudoService contService;

  _SplashControllerBase({this.service, this.contService});

  Future<List<Conteudo>> postConteudos() async {
    try {
      //String deviceId;
      //String linuxId;
      if (Platform.isAndroid) {
        //deviceId = await PlatformDeviceId.getDeviceId;
        var reponse = await contService.downloadConteudo();
        contService.getAllConteudos();
        print(reponse);
        return reponse;
      } else if (Platform.isLinux) {
        // linuxId = await PlatformDeviceId.getDeviceId;
        var reponse = await contService.downloadConteudo();
        return reponse;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<Equipamento> postServer() async {
    try {
      //String deviceId;
      String linuxId;
      if (Platform.isAndroid) {
        //deviceId = await PlatformDeviceId.getDeviceId;
        var reponse = await service.logar('5555', '5555');
        print(reponse);
        return reponse;
      } else if (Platform.isLinux) {
        // linuxId = await PlatformDeviceId.getDeviceId;
        var reponse = await service.logar(linuxId, '123123');
        return reponse;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<bool> downloadConteudos() async {
    await this.contService.downloadConteudo();
  }

  // Future isInternetMobile() async {
  //   var connectivityResult = await (Connectivity().checkConnectivity());
  //   if (connectivityResult == ConnectivityResult.mobile) {
  //     if (await DataConnectionChecker().hasConnection) {
  //       return valueHardware();
  //     } else {
  //       //return false;
  //     }
  //   } else if (connectivityResult == ConnectivityResult.wifi) {
  //     if (await DataConnectionChecker().hasConnection) {
  //       return valueHardware();
  //     } else {
  //       //return false;
  //     }
  //   } else {
  //     print('Sem conexão com a internet');
  //   }
  // }

  Future<bool> isInternetLinux() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {}
  }

  Stream<bool> isInternetLinux2() async* {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        yield true;
      }
    } on SocketException catch (_) {}
  }
}
