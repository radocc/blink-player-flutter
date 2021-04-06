import 'package:blink/app/database/database.dart';
import 'package:moor/moor.dart';

part 'atualizacao_conteudo_dao.g.dart';

@UseDao(tables: [AtualizacaoConteudo])
class AtualizacaoConteudoDAO extends DatabaseAccessor<Database> with _$AtualizacaoConteudoDAOMixin {
  AtualizacaoConteudoDAO(Database db) : super(db);
}
