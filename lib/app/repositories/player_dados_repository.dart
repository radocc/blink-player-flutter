import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';

class PlayerDadosRepository extends AbstractRepository {
  // final Dio dio;

  //Verificar path
  PlayerDadosRepository() : super("playerdados");

  Future<List<PlayerDado>> enviar(List<PlayerDado> lista) async {
    try {
      if (lista.length > 0){
        var resp = await dio.post(getUrl('/salvar/log'), data:lista);      
        var listaRetornada = List<PlayerDado>();
        resp.data.forEach((cv) {
          listaRetornada.add(PlayerDado.fromJson(cv));
        });
        return listaRetornada;
      }else {
        return List<PlayerDado>();
      }
    } catch (error) {
      //print(error.response.statusCode);
      throw Exception("Exception occured: $error");
    }
  }

}

 
