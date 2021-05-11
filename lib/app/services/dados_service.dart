import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/dao/atualizacao_conteudo_dao.dart';
import 'package:blink/app/database/dao/atualizacao_dao.dart';
import 'package:blink/app/database/dao/atualizacao_status_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/dados_repository.dart';
import 'package:moor/moor.dart';

abstract class DadosService<T extends Insertable<DataClass>> {
  final AtualizacaoDAO atualizacaoDAO = Database.instance.atualizacaoDAO;
  final AtualizacaoStatusDAO statusDAO = Database.instance.atualizacaoStatusDAO;
  final AtualizacaoConteudoDAO atualizacaoConteudoDAO = Database.instance.atualizacaoConteudoDAO;  

  DadosRepository repo;

  DadosService(
    this.repo
  );

  AbstractDAO<T> getDAO(); 
  

  Future<List<T>> download(Atualizacoe atualizacao) async {
    // ignore: missing_required_param
    AtualizacaoStatus status = AtualizacaoStatus(idAtualizacao: atualizacao.id,dataInicial: DateTime.now(),
    identificacao: repo.identificacao.index);
    try {
      var data = await repo.download();
      status.dataDownload = DateTime.now();
      status = await statusDAO.save(status);
      
      data = await processar(data, status);
      status.dataProcessado = DateTime.now();
      status = await statusDAO.save(status);

      data = await finalizar(data, status);
      status.dataFinal = DateTime.now();
      status = await statusDAO.save(status);  
      return data;
    } catch (e) {
      status.mensagem = e.toString();
      status = await statusDAO.save(status);  
      throw e;
    }
  }

  Future<List<T>> processar(List<T> lista,AtualizacaoStatus status) async {
     if (lista != null) {
      for (var item in lista) {
        item = await this.getDAO().save(item);
      }
    }    
    return lista;
  }

  Future<List<T>> finalizar(List<T> lista,AtualizacaoStatus status) async {

    return lista;
  }
}
