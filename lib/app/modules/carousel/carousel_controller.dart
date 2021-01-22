import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'carousel_controller.g.dart';

@Injectable()
class CarouselController = _CarouselControllerBase with _$CarouselController;

abstract class _CarouselControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
