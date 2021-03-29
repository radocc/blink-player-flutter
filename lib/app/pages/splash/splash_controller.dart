import 'dart:async';
import 'dart:io';

import 'package:battery/battery.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:connectivity/connectivity.dart';
import 'package:cpu_reader/cpu_reader.dart';
import 'package:cpu_reader/cpuinfo.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_info/system_info.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:wifi/wifi.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  LoginService service;
  ConteudoService contService;

  _SplashControllerBase({this.service, this.contService}) {
    //postServer();
  }

  Battery _battery = Battery();

  Future<Conteudo> postConteudos() async {
    try {
      //String deviceId;
      //String linuxId;
      if (Platform.isAndroid) {
        //deviceId = await PlatformDeviceId.getDeviceId;
        var reponse = await contService.downloadConteudo();
        print(reponse);
        return reponse;
      } else if (Platform.isLinux) {
        // linuxId = await PlatformDeviceId.getDeviceId;
        var reponse = await contService.downloadConteudo();
        return reponse;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<Equipamento> postServer() async {
    try {
      //String deviceId;
      String linuxId;
      if (Platform.isAndroid) {
        //deviceId = await PlatformDeviceId.getDeviceId;
        var reponse = await service.logar('5555', '5555');
        print(reponse);
        return reponse;
      } else if (Platform.isLinux) {
        // linuxId = await PlatformDeviceId.getDeviceId;
        var reponse = await service.logar(linuxId, '123123');
        return reponse;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<bool> downloadConteudos() async {
    await this.conteudoService.downloadConteudo();
  }

  Future isInternetMobile() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      if (await DataConnectionChecker().hasConnection) {
        return valueHardware();
      } else {
        //return false;
      }
    } else if (connectivityResult == ConnectivityResult.wifi) {
      if (await DataConnectionChecker().hasConnection) {
        return valueHardware();
      } else {
        //return false;
      }
    } else {
      print('Sem conexão com a internet');
    }
  }

  Future<bool> isInternetLinux() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {}
  }

  Stream<bool> isInternetLinux2() async* {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        yield true;
      }
    } on SocketException catch (_) {}
  }

  Future valueHardware() async {
    if (Platform.isLinux) {
      print('value hardware lunix');
      const int MEGABYTE = 1024 * 1024;
      List<String> array = [];
      var totalFreeMemory = (SysInfo.getFreePhysicalMemory() ~/ MEGABYTE * 100);
      var totalMemory = SysInfo.getTotalPhysicalMemory() ~/ MEGABYTE;
      var porcentFreeMemory = totalFreeMemory / totalMemory;
      String porcentFreeMemoryFormated =
          porcentFreeMemory.toStringAsPrecision(1);
      var porcentUsageMemory = 100 - porcentFreeMemory;
      String porcentUsageMemoryFormated =
          porcentUsageMemory.toStringAsPrecision(2);
      array.add('--- Memoria ---');
      array.add(
          "Total Memoria Fisica: ${SysInfo.getTotalPhysicalMemory() ~/ MEGABYTE} MB");
      array.add(
          'Memoria Fisica Livre: ${SysInfo.getFreePhysicalMemory() ~/ MEGABYTE} MB');
      array.add("Memoria Fisica Livre: $porcentFreeMemoryFormated %");
      array.add('Uso de Memoria Fisica: $porcentUsageMemoryFormated %');
      array.add(
          "Total Memoria Virtual: ${SysInfo.getTotalVirtualMemory() ~/ MEGABYTE} MB");
      array.add(
          "Memoria Virtual Livre: ${SysInfo.getFreeVirtualMemory() ~/ MEGABYTE} MB");
      return array;
    } else if (Platform.isAndroid) {
      print('value hardware android');
      const int MEGABYTE = 1024 * 1024;
      CpuInfo cpuInfo = await CpuReader.cpuInfo;
      final int batteryLevel = await _battery.batteryLevel;
      int level = await Wifi.level;
      String wifiName = await Wifi.ssid;
      List<String> array = [];
      var totalFreeMemory =
          ((SysInfo.getFreePhysicalMemory() ~/ MEGABYTE) * 100);
      var totalMemory = SysInfo.getTotalPhysicalMemory() ~/ MEGABYTE;
      var porcentFreeMemory = totalFreeMemory / totalMemory;
      String porcentFreeMemoryFormated =
          porcentFreeMemory.toStringAsPrecision(2).substring(0, 1);
      var porcentUsageMemory = 100 - porcentFreeMemory;
      String porcentUsageMemoryFormated =
          porcentUsageMemory.toStringAsPrecision(2);
      array.add('--- CPU READER ---');
      array.add('Abi: ' + cpuInfo.abi);
      array.add('Temperatura: ' + cpuInfo.cpuTemperature.toString());
      array.add('Numero de Cores: ' + cpuInfo.numberOfCores.toString());
      array.add('--- Bateria ---');
      array.add('Carga: ' + batteryLevel.toString() + '%');
      array.add('--- Wifi ---');
      array.add('Força do Wifi: ' + level.toString());
      array.add('Nome do Wifi: ' + wifiName);
      array.add('--- Memoria ---');
      array.add(
          "Total Memoria Fisica: ${SysInfo.getTotalPhysicalMemory() ~/ MEGABYTE} MB");
      array.add(
          'Memoria Fisica Livre: ${SysInfo.getFreePhysicalMemory() ~/ MEGABYTE} MB');
      array.add("Memoria Fisica Livre: $porcentFreeMemoryFormated %");
      array.add('Uso de Memoria Fisica: $porcentUsageMemoryFormated %');
      array.add(
          "Total Memoria Virtual: ${SysInfo.getTotalVirtualMemory() ~/ MEGABYTE} MB");
      array.add(
          "Memoria Virtual Livre: ${SysInfo.getFreeVirtualMemory() ~/ MEGABYTE} MB");
      return array;
    }
  }
}
