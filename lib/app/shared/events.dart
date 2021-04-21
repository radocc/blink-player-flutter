import 'dart:async';

class Events {
  //static Events instance = Events();

  static StreamController<bool> equipBody = StreamController<bool>();
  //static StreamController<bool> equipCont = StreamController<bool>();

  void dispose() {
    equipBody.close();
    //equipCont.close();
  }
}
