import 'dart:convert';

import 'package:blink/app/models/dados_model.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';

abstract class DadosRepository<T> extends AbstractRepository {
  DadosIdentificacao identificacao;

  DadosRepository(this.identificacao) : super('dados');

  Future<List<T>> download() async {
    try {
      var dados = DadosModel(
        limite: 100,
        identificacao: identificacao.index,
        // ultimaRequisicao:
      );
      var res = await dio.post(getUrl(''), data: dados);
      var decodedData = DadosModel<T>.fromJson(res.data);
      if (decodedData.excecao != null) {
        throw Exception(decodedData.excecao);
      }
      return decodedData.lista;
    } on DioError catch (e) {
      print(e.response.data);
      return [];
    } on TypeError catch (e2) {
      print(e2.stackTrace);
      return [];
    }
  }
}
