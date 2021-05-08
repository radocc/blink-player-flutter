import 'dart:async';
import 'dart:io';

import 'package:battery/battery.dart';
import 'package:flutter/material.dart';
import 'package:blink/app/app_module.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:system_info/system_info.dart';
import 'package:wifi/wifi.dart';

import 'app/database/database.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Battery _battery = Battery();
  const oneSec = const Duration(seconds: 15);
  // ativarOneSignal();

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
      //const int MEGABYTE = 1024 * 1024;
      final int batteryLevel = await _battery.batteryLevel;
      int level = await Wifi.level;
      String wifiName = await Wifi.ssid;
      List<String> array = [];
      var totalFreeMemory = (SysInfo.getFreePhysicalMemory());
      var totalMemory = SysInfo.getTotalPhysicalMemory();
      var totalFreeVirtualMemory = (SysInfo.getFreeVirtualMemory());
      // print('Free virtual: $totalFreeVirtualMemory');
      var totalVirtualMemory = SysInfo.getTotalVirtualMemory();
      // print('total virtual: $totalVirtualMemory');
      var porcentFreeMemory = (totalFreeMemory / totalMemory) * 100;
      String porcentFreeMemoryFormated =
          porcentFreeMemory.toStringAsPrecision(2).substring(0, 1);
      // print('Total de Memoria: ' +
      //     totalMemory.toString() +
      //     ' \nMemoria livre: ' +
      //     totalFreeMemory.toString() +
      //     ' \nPorcentual de Memoria Livre: ' +
      //     porcentFreeMemory.toString() +
      //     ' \nMemoria Formatada: ' +
      //     porcentFreeMemoryFormated);
      array.add(batteryLevel.toString());
      array.add(level.toString());
      array.add(wifiName);
      array.add(porcentFreeMemoryFormated);
      return array;
    }
  }

  Timer.periodic(oneSec, (Timer timer) {
    if (Platform.isAndroid) {
      valueHardware2().then((value) => {
            // print('save value android'),
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
            // print(value.toString())
          });
    } else {
      valueHardware2().then((value) => {
            // print('save value linux'),
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
            // print(value.toString())
          });
    }
  });

  HttpOverrides.global = new MyHttpOverrides();

  runApp(ModularApp(module: AppModule()));
}

Future ativarOneSignal() async {
  await OneSignal.shared.setRequiresUserPrivacyConsent(false);
  // await OneSignal.shared.consentGranted(true);
  await OneSignal.shared.init(
    "6f13f597-f061-4c62-a65b-e933a0e15fa6",
    iOSSettings: {
      OSiOSSettings.autoPrompt: false,
      OSiOSSettings.inAppLaunchUrl: true
    }
  );
  OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);
  OneSignal.shared.setNotificationReceivedHandler((OSNotification notification) {
    // will be called whenever a notification is received
  });
  // OneSignal.shared.promptUserForPushNotificationPermission();
  OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
    // will be called whenever a notification is opened/button pressed.
  });
}


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        final isValidHost = ["192.168.2.108"].contains(host);
        return isValidHost;
        //true;
      };
  }
}
