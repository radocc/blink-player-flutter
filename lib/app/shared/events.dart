import 'dart:async';

class Events {
  //static Events instance = Events();

  static StreamController<bool> equipBody = StreamController<bool>();
  static StreamController<bool> galeriaCtrl = StreamController<bool>();

  void dispose() {
    equipBody.close();
    galeriaCtrl.close();
  }
}
