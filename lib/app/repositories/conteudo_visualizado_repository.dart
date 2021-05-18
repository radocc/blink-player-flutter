import 'dart:convert';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';

import 'dados_repository.dart';

class ConteudoVisualizadoRepository extends AbstractRepository {
  // final Dio dio;

  ConteudoVisualizadoRepository() : super("conteudovisualizado");


  Future<List<ConteudoVisualizado>> enviar(List<ConteudoVisualizado> lista) async {
    try {
      var resp = await dio.post(getUrl('/salvar/visualizados'), data:lista);
      var vetor = jsonDecode(resp.data);
      var listaRetornada = [];
      vetor.forEach((cv) {
        listaRetornada.add(ConteudoVisualizado.fromJson(cv));
      });
      return listaRetornada;
    } catch (error) {
      //print(error.response.statusCode);
      throw Exception("Exception occured: $error");
    }
  }

}

 
