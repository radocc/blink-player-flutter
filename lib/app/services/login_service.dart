import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/login_repository.dart';
import 'package:moor/moor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  LoginRepository loginRep;

  LoginService({@required this.loginRep});

  Future<Equipamento> logar(String uuid, String idOneSignal) async {
    var equip = await this.loginRep.logar(uuid, idOneSignal);
    if (equip != null) {
      Database.instance.equipsDAO.addValueEquipments(equip);
      var prefs = await SharedPreferences.getInstance();
      await prefs.setString('uuid', equip.uuid);
    }
    return equip;
  }
}
