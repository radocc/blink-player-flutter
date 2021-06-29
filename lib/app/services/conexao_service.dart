import 'package:blink/app/shared/events.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(singleton: true)
class ConexaoService {
  SharedPreferences prefs;
  ConexaoService() {
    onInit();
    Connectivity().isConnected.listen((bool result) async {
      var conexao = prefs.getBool('conexao');
      if (!conexao && result) {
        Events.equipBody.add(true);
        //Events.equipCont.add(true);
      } else if (!result) {
        Events.equipBody.add(false);
        //Events.equipCont.add(false);
      }
      prefs.setBool('conexao', result);
    });
  }

  onInit() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool('conexao', false);
  }
}
