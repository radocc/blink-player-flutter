import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'carousel_itens_controller.g.dart';

@Injectable()
class CarouselItensController = _CarouselItensControllerBase with _$CarouselItensController;

abstract class _CarouselItensControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
