import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'slide_image_controller.g.dart';

@Injectable()
class SlideImageController = _SlideImageControllerBase
    with _$SlideImageController;

abstract class _SlideImageControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
