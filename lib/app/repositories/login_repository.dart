import 'package:blink/app/database/database.dart';
import 'package:blink/app/shared/constrants.dart';
import 'package:dio/dio.dart';
import 'package:moor/moor.dart';

class LoginRepository {
  final Dio dio;

  LoginRepository({@required this.dio});

  Future<Equipamento> logar(String uuid, String onSignal) async {
    var resp = await dio
        .post(URL_LOGIN, data: {"uuid": uuid, "idOneSignal": onSignal});
    return Equipamento.fromJson(resp.data);
  }
}
