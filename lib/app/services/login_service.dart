import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/login_repository.dart';
import 'package:moor/moor.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class LoginService {
  LoginRepository loginRep;

  LoginService({@required this.loginRep});


  Future<Equipamento> logar() async{
    String deviceId = "";
    var idOneSignal = "";
    var status = await OneSignal.shared.getPermissionSubscriptionState();
    idOneSignal = status.subscriptionStatus.userId;

    deviceId = await PlatformDeviceId.getDeviceId; 
    var equip = await this.loginRep.logar(deviceId, idOneSignal);
    if (equip != null) {
      Database.instance.equipsDAO.addValueEquipments(equip);
      var prefs = await SharedPreferences.getInstance();
      await prefs.setString('uuid', equip.uuid);
    }
    return equip;
  }

}
