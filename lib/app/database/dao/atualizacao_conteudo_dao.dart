import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/entity/atualizacao_conteudo_entity.dart';
import 'package:moor/moor.dart';

part 'atualizacao_conteudo_dao.g.dart';

@UseDao(tables: [AtualizacoesConteudo])

class AtualizacaoConteudoDAO extends AbstractDAO<AtualizacaoConteudo> with _$AtualizacaoConteudoDAOMixin {
  AtualizacaoConteudoDAO(Database db) : super(db) {
    table = atualizacoesConteudo;
  }
}
