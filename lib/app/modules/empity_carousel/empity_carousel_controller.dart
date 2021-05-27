import 'dart:async';
import 'dart:io';

import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'empity_carousel_controller.g.dart';

@Injectable()
class EmpityCarouselController = _EmpityCarouselControllerBase
    with _$EmpityCarouselController;

abstract class _EmpityCarouselControllerBase with Store {
  SincronizaService sincService;

  _EmpityCarouselControllerBase(this.sincService);
  var controller = CarouselController();
  List<File> files;

  //<int>
  Future<int> sincronizar() async {
    await sincService.iniciar();
    print('passou iniciar');
    var values = await load();
    print('passou load');
    return values;
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
