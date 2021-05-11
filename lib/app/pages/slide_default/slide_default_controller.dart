import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'slide_default_controller.g.dart';

@Injectable()
class SlideDefaultController = _SlideImageControllerBase with _$SlideDefaultController;

abstract class _SlideImageControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
