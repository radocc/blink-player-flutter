import 'package:blink/app/database/dao/atualizacao_conteudo_dao.dart';
import 'package:blink/app/database/dao/atualizacao_dao.dart';
import 'package:blink/app/database/dao/atualizacao_status_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/dados_repository.dart';

abstract class DadosService<T> {
  final AtualizacaoDAO atualizacaoDAO = Database.instance.atualizacaoDAO;
  final AtualizacaoStatusDAO statusDAO = Database.instance.atualizacaoStatusDAO;
  final AtualizacaoConteudoDAO atualizacaoConteudoDAO =
      Database.instance.atualizacaoConteudoDAO;

  DadosRepository repo;

  DadosService(
    this.repo,
  );

  Future<List<T>> download() async {
    var data = await repo.download();
    
    return data;
  }
}
