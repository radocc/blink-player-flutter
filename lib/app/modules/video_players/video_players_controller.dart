import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'video_players_controller.g.dart';

@Injectable()
class VideoPlayersController = _VideoPlayersControllerBase
    with _$VideoPlayersController;

abstract class _VideoPlayersControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
