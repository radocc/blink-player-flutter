import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/atualizacao_entity.dart';
import 'package:moor/moor.dart';

part 'atualizacao_dao.g.dart';

@UseDao(tables: [Atualizacoes])
class AtualizacaoDAO extends DatabaseAccessor<Database> with _$AtualizacaoDAOMixin {
  AtualizacaoDAO(Database db) : super(db);

  
}