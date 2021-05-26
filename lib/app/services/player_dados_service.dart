import 'dart:async';

import 'package:battery/battery.dart';
import 'package:blink/app/database/dao/player_dados_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/player_dados_repository.dart';
import 'package:system_info/system_info.dart';
import 'package:wifi/wifi.dart';

class PlayerDadosService {
  PlayerDadosRepository prevRepo;
  PlayerDadosDAO dao = Database.instance.playerDAO;

  PlayerDadosService(this.prevRepo) {
    timerValueHardware();
  }

  getDAO() {
    return this.dao;
  }

  Future enviarDadosPlayer() async {
    var lista = await dao.getParaEnvio();
    lista = await prevRepo.enviar(lista);
    lista.forEach((ct) {
      dao.deletar(ct);
    });
    return true;
  }

  timerValueHardware() {
    Timer.periodic(Duration(seconds: 15), (Timer timer) {
      getValuesHardware().then((value) => {
            // ignore: missing_required_param
            dao.save(PlayerDado(
              bateria: double.parse(value[0]),
              sinalWifi: double.parse(value[1]),
              nomeWifi: value[2],
              memoria: int.parse(value[3]),
              dataAlteracao: DateTime.now(),
              dataCadastro: DateTime.now(),
            )),
            // print(value.toString())
          });
    });
  }

  Future getValuesHardware() async {
    Battery _battery = Battery();
    final int batteryLevel = await _battery.batteryLevel;
    int level = await Wifi.level;
    String wifiName = await Wifi.ssid;
    List<String> array = [];
    var totalFreeMemory = (SysInfo.getFreePhysicalMemory());
    var totalMemory = SysInfo.getTotalPhysicalMemory();
    var porcentFreeMemory = (totalFreeMemory / totalMemory) * 100;
    String porcentFreeMemoryFormated =
        porcentFreeMemory.toStringAsPrecision(2).substring(0, 1);
    array.add(batteryLevel.toString());
    array.add(level.toString());
    array.add(wifiName);
    array.add(porcentFreeMemoryFormated);
    return array;
  }
}
