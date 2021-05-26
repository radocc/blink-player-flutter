import 'dart:async';
import 'dart:io';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:blink/app/shared/events.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final LoginService service;
  final SincronizaService syncService;

  StreamSubscription<bool> streamEquipBody;
  StreamController<Equipamento> streamPostServer =
      StreamController<Equipamento>.broadcast();
  var controller = CarouselController();
  List<File> files;

  _SplashControllerBase(this.service, this.syncService);

  onInit() async {
    try {
    streamEquipBody = Events.equipBody.stream.listen((value) {
      print('STREAM: $value');
      if (value) {
        login();
      } 
    });
    } on StateError catch(e) {
      print(e.stackTrace);
      await streamEquipBody.cancel();
      await Events.equipBody.close();
      onInit();
    }
    // login();
  }

  Future sincronizar() async {
    await syncService.iniciar();
    var testes = await load();
    if (testes > 0) {
      return true;
    } else {
      return false;
    }
  }
 
  Future<Equipamento> login() async {
    try {
      var response = await service.logar();
      if (!response.ativado) {
        await Modular.to.pushNamed('/ative', arguments: {
          'id': response.id.toString(),
          'nome': response.nome,
          'data': DateFormat('dd-MM-yyyy HH:mm').format(DateTime.now()),
          'uuid': response.uuid
        });
        streamPostServer.add(response);
      } else {
        streamPostServer.add(response);
      }
      
      return response;
    } on DioError catch (e) {
      print(e.response.statusCode);
      streamPostServer.addError(e);
      throw Exception("Exception occured: $e");
    }
  }
 
  dispose() {
    streamEquipBody.cancel();
    Events.equipBody.close();
  }

      Future<int> load() async {
    this.files = [];

    Directory directory = await getApplicationDocumentsDirectory();
    List<FileSystemEntity> files = directory.listSync();

    print(directory.path);

    for (FileSystemEntity file in files) {
      if (file is File) {
        String ext = extension(file.path);
        // Verifica se é uma imagem ou video e adiciona na lista
        if (this.controller.extVideo.contains(ext) ||
            controller.extImg.contains(ext)) {
          this.files.add(file);
        }
      }
    }
    print('Qtd. Imagem/video: ' + this.files.length.toString());
    return this.files.length;
  }
}
