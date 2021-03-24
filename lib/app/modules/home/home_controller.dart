import 'package:device_info/device_info.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dart:io';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:platform_device_id/platform_device_id.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final _urlImage1 =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Orange-Whole-%26-Split.jpg/1920px-Orange-Whole-%26-Split.jpg';

  // final _urlImage2 =
  //     'https://upload.wikimedia.org/wikipedia/commons/2/2c/Needle_Galaxy_4565.jpeg';
  // final _urlImage3 =
  //     'https://upload.wikimedia.org/wikipedia/commons/e/ee/Naked_woman-Louvre-E27429.jpg';
  // final _urlVideo =
  //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
  // final _urlVideo2 =
  //     'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4';

  // void createFolder() async {
  //   String directory = (await getApplicationDocumentsDirectory()).path;
  //   if (await io.Directory(directory + "/blink_tv").exists() != true) {
  //     print("Directory not exist");
  //     new io.Directory(directory + "/blink_tv").createSync(recursive: true);
  //   } else {
  //     print("Directory has exist");
  //   }
  // }

  Future<void> savePhoto() async {
    //Pego imagem
    final response = await get(_urlImage1);
    // Pego nome da Imagem
    final imageName = basename(_urlImage1);
    // Pego o dir
    final appDir = (await getApplicationDocumentsDirectory()).path;
    // Pego o dir
    // final dir = '${appDir.path}/blink_tv';

    // Salvo a imagem no dir
    // Uso para exibir a imagem
    final localPath = join(appDir, imageName);

    // Download
    final imageFile = File(localPath);
    await imageFile.writeAsBytes(response.bodyBytes);
  }
}
