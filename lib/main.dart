import 'dart:async';
import 'dart:io';

import 'package:battery/battery.dart';
import 'package:blink/app/database/database.dart';
import 'package:flutter/material.dart';
import 'package:blink/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:network_state/network_state.dart';
import 'package:system_info/system_info.dart';
import 'package:wifi/wifi.dart';

void main() {
  NetworkConfig.pingUrls = ['http://mockbin.com/request'];

  NetworkConfig.pollIntervalMs = 300;
  NetworkConfig.timeoutMs = 1000;

  NetworkState.startPolling();
  Battery _battery = Battery();

  Future valueHardware2() async {
    if (Platform.isLinux) {
      const int MEGABYTE = 1024 * 1024;
      List<String> array = [];
      var totalFreeMemory = (SysInfo.getFreePhysicalMemory() ~/ MEGABYTE * 100);
      var totalMemory = SysInfo.getTotalPhysicalMemory() ~/ MEGABYTE;
      var porcentFreeMemory = totalFreeMemory / totalMemory;
      String porcentFreeMemoryFormated =
          porcentFreeMemory.toStringAsPrecision(2).substring(0, 1);
      array.add(porcentFreeMemoryFormated);
      return array;
    } else if (Platform.isAndroid) {
      const int MEGABYTE = 1024 * 1024;
      final int batteryLevel = await _battery.batteryLevel;
      int level = await Wifi.level;
      String wifiName = await Wifi.ssid;
      List<String> array = [];
      var totalFreeMemory = (SysInfo.getFreePhysicalMemory() ~/ MEGABYTE * 100);
      var totalMemory = SysInfo.getTotalPhysicalMemory() ~/ MEGABYTE;
      var porcentFreeMemory = totalFreeMemory / totalMemory;
      String porcentFreeMemoryFormated =
          porcentFreeMemory.toStringAsPrecision(2).substring(0, 1);
      array.add(batteryLevel.toString());
      array.add(level.toString());
      array.add(wifiName);
      array.add(porcentFreeMemoryFormated);
      return array;
    }
  }

  const oneSec = const Duration(seconds: 10);

  Timer.periodic(oneSec, (Timer timer) {
    if (Platform.isAndroid) {
      print('android');
      valueHardware2().then((value) => {
            Database.instance.playerDAO.addValueHardware(PlayerDado(
              bateria: double.parse(value[0]),
              sinalWifi: double.parse(value[1]),
              nomeWifi: value[2],
              memoria: int.parse(value[3]),
              dataLigado: DateTime.now(),
              dataAlteracao: DateTime.now(),
              dataCadastro: DateTime.now(),
              versao: Database.instance.schemaVersion,
              deletado: false,
              idUsuarioCadastro: null,
              idUsuarioAlteracao: null,
            )),
            print(value.toString())
          });
    } else {
      print('linux');
      valueHardware2().then((value) => {
            Database.instance.playerDAO.addValueHardware(PlayerDado(
              bateria: null,
              sinalWifi: null,
              nomeWifi: null,
              memoria: int.parse(value[0]),
              dataLigado: DateTime.now(),
              dataAlteracao: DateTime.now(),
              dataCadastro: DateTime.now(),
              versao: 1,
              deletado: false,
              idUsuarioCadastro: null,
              idUsuarioAlteracao: null,
            )),
            print(value.toString())
          });
    }
  });

  runApp(ModularApp(module: AppModule()));
}
