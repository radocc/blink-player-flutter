
import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/sequencia_conteudo_repository.dart';
import 'package:blink/app/services/dados_service.dart';

class SequenciaConteudoService extends DadosService<SequenciaConteudo> {
  SequenciaConteudoRepository seqRepo;
  SequenciaConteudoDAO dao = Database.instance.sequenciaConteudoDAO;
  
  SequenciaConteudoService(this.seqRepo) : super(seqRepo);

  getDAO(){
    return dao;
  }

  Future<List<SequenciaConteudo>> finalizar(List<SequenciaConteudo> lista,AtualizacaoStatus status) async {

    return lista;
  }

}
