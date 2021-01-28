import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'slide_video_controller.g.dart';

@Injectable()
class SlideVideoController = _SlideVideoControllerBase
    with _$SlideVideoController;

abstract class _SlideVideoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
