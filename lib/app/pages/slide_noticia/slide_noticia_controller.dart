import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'slide_noticia_controller.g.dart';

@Injectable()
class SlideNoticiaController = _SlideNoticiaControllerBase with _$SlideNoticiaController;

abstract class _SlideNoticiaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  
}
