import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/sequencia_conteudo_repository.dart';
import 'package:blink/app/services/dados_service.dart';

class SequenciaConteudoService extends DadosService<SequenciaConteudo> {
  SequenciaConteudoRepository seqRepo;
  SequenciaConteudoDAO dao = Database.instance.sequenciaConteudoDAO;

  SequenciaConteudoService(this.seqRepo) : super(seqRepo);

  getDAO() {
    return dao;
  }

  Future<List<SequenciaConteudo>> finalizar(
      List<SequenciaConteudo> lista, AtualizacaoStatus status) async {
    return lista;
  }

  Future<List<SequenciaConteudo>> processar(
      List<SequenciaConteudo> lista, AtualizacaoStatus status) async {
    if (lista != null && lista.length > 0) {
      await dao.deleteAllSequence();
      for (var item in lista) {
        item = await this.getDAO().save(item);
      }
    }
    return lista;
  }
}
