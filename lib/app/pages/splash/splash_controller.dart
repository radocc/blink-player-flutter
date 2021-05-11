import 'dart:async';

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

    login();
  }

  Future sincronizar() async {
    await syncService.iniciar();
    return true;
  }

  /* Future<List<Conteudo>> postConteudos() async {
    try {
      //String deviceId;
      //String linuxId;
      int number = await contService.load();
      var conteudos;
      if (Platform.isAndroid) {
        //deviceId = await PlatformDeviceId.getDeviceId;
        if (number > 0) {
          conteudos = contService.downloadConteudo();
        } else {
          conteudos = await contService.downloadConteudo();
        }

        //var conteudos = await contService.downloadConteudo();
        return conteudos;
      } else if (Platform.isLinux) {
        // linuxId = await PlatformDeviceId.getDeviceId;
        var reponse = await contService.downloadConteudo();
        return reponse;
      }
    } catch (e) {
      print(e.toString());
      throw new Exception("Erro interno: " + e.toString());
    }
  } */

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

  /* Future<List<Noticia>> postNoticias() async {
    try {
      var response = await noticiaService.saveNoticias(5);
      print(response);
      return response;
    } on DioError catch (e) {
      print(e.response.statusCode);
      throw Exception("Exception occured: $e");
    }
  } */

  /*  Future<List<Template>> postTemplates() async {
    try {
      var response = await templateService.saveTemplate(2);
      print(response);
      return response;
    } on DioError catch (e) {
      print(e.response.statusCode);
      throw Exception("Exception occured: $e");
    }
  } */

  /*  Future<List<PrevisaoImagemTempo>> postPrevisaoTempo() async {
    try {
      var response = await prevService.savePrevisaoTempo(1);
      print(response);
      return response;
    } on DioError catch (e) {
      print(e.response.statusCode);
      throw Exception("Exception occured: $e");
    }
  } */

  dispose() {
    streamEquipBody.cancel();
  }
}
