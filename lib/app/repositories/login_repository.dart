import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';

class LoginRepository extends AbstractRepository {
  // final Dio dio;

  LoginRepository() : super('equipamento');

  Future<Equipamento> logar(String uuid, String onSignal) async {
    try {
      var resp = await dio.post(getUrl('/logar'),
          data: {"uuid": uuid, "idOneSignal": onSignal});
      return Equipamento.fromJson(resp.data);
    } catch (error) {
      //print(error.response.statusCode);
      throw Exception("Exception occured: $error");
    }
  }
}
