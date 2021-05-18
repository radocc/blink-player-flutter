import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'slide_loteria_controller.g.dart';

@Injectable()
class SlideLoteriaController = _SlideImageControllerBase
    with _$SlideLoteriaController;

abstract class _SlideImageControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
