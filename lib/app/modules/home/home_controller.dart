import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dart:io' as io;
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:path_provider/path_provider.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final _urlImage =
      'https://upload.wikimedia.org/wikipedia/commons/e/ee/Naked_woman-Louvre-E27429.jpg';

  // final _urlVideo =
  //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';

  void createFolder() async {
    String directory = (await getApplicationDocumentsDirectory()).path;
    if (await io.Directory(directory + "/blink_tv").exists() != true) {
      print("Directory not exist");
      new io.Directory(directory + "/blink_tv").createSync(recursive: true);
    } else {
      print("Directory has exist");
    }
  }

  Future<void> savePhoto() async {
    //Pego imagem
    final response = await http.get(_urlImage);
    // Pego nome da Imagem
    final imageName = path.basename(_urlImage);
    // Pego o dir
    final appDir = (await pathProvider.getApplicationDocumentsDirectory());
    // Pego o dir
    final dir = '${appDir.path}/blink_tv';

    // Salvo a imagem no dir
    // Uso para exibir a imagem
    final localPath = path.join(dir, imageName);

    // Download
    final imageFile = io.File(localPath);
    await imageFile.writeAsBytes(response.bodyBytes);
  }
}
