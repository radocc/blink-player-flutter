import 'dart:io';

import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/services/progress_service.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'download_conteudo_controller.g.dart';

@Injectable()
class DownloadConteudoController = _DownloadConteudoControllerBase with _$DownloadConteudoController;

abstract class _DownloadConteudoControllerBase with Store {
  final ProgressService progressService;
  final SincronizaService syncService;

  var controller = CarouselController();
  List<File> files;

  _DownloadConteudoControllerBase(this.progressService, this.syncService);


  Future setLandscape() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  Future setDisposeLandscape() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

    Future sincronizar() async {
    await syncService.iniciar();
    var valueDir = await load();
    if (valueDir > 0) {
      //await Modular.to.pushNamed('/home');
      return true;
    } else {
      await Modular.to.pushNamed('/empityCarousel');
    }
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
