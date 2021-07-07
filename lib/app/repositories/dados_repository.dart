import 'package:blink/app/database/dao/atualizacao_dao.dart';
import 'package:blink/app/database/dao/atualizacao_status_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/dados_model.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

abstract class DadosRepository<T> extends AbstractRepository {
  DadosIdentificacao identificacao;
  AtualizacaoDAO atualizacaoDAO = Database.instance.atualizacaoDAO;
  AtualizacaoStatusDAO statusDAO = Database.instance.atualizacaoStatusDAO;
  DadosRepository(this.identificacao) : super('dados');

  Future<List<T>> download() async {
    try {
      AtualizacaoStatus status =
          await statusDAO.getUltimo(this.identificacao.index);

      var dados = DadosModel(
          limite: 100,
          identificacao: identificacao.index,
          ultimaRequisicao: null);

      if (status != null) {
        print('${identificacao.index} Data ultima requisicao ${DateFormat('dd/MM/yy hh:mm:ss').format(status.dataInicial)}');
        dados.ultimaRequisicao = status.dataInicial;
        print(dados.ultimaRequisicao);
      }
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
