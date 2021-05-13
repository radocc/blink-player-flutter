import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'slide_previsao_tempo_controller.g.dart';

@Injectable()
class SlidePrevisaoTempoController = _SlidePrevisaoTempoControllerBase
    with _$SlidePrevisaoTempoController;

abstract class _SlidePrevisaoTempoControllerBase with Store {
  // Lista de formatos suportados de video
  List<String> extVideo = ['.mp4', '.mkv', '.wmv', '.avi', '.flv'];

  // Lista de formatos suportados de imagem
  List<String> extImg = ['.png', '.jpg', '.jpeg'];

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
