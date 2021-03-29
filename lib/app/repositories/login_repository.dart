import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:moor/moor.dart';

class LoginRepository extends AbstractRepository {
  final Dio dio;

  LoginRepository({@required this.dio});

  Future<Equipamento> logar(String uuid, String onSignal) async {
    var resp = await dio
        .post(getUrl('equipamento/logar'), data: {"uuid": uuid, "idOneSignal": onSignal});
    return Equipamento.fromJson(resp.data);
  }
}
