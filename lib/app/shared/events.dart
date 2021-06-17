import 'dart:async';

class Events {
  //static Events instance = Events();

  static StreamController<bool> equipBody = StreamController<bool>.broadcast();
  static StreamController<bool> equipAtiveBody = StreamController<bool>.broadcast();
  static StreamController<bool> atualizacaoConteudoCtrl = StreamController<bool>.broadcast();

  void dispose() {
    equipBody.close();
    equipAtiveBody.close();
    atualizacaoConteudoCtrl.close();
  }
}
