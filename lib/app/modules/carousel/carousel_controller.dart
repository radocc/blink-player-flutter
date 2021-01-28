import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'carousel_controller.g.dart';

@Injectable()
class CarouselController = _CarouselControllerBase with _$CarouselController;

abstract class _CarouselControllerBase with Store {
  
  // Lista de formatos suportados de video
  List<String> extVideo = ['.mp4', '.mkv', '.wmv', '.avi', '.flv'];

  // Lista de formatos suportados de imagem
  List<String> extImg = ['.png', '.jpg', '.jpeg'];
}
