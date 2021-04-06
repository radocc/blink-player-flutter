import 'package:blink/app/database/database.dart';
import 'package:moor/moor.dart';

part 'atualizacao_status_dao.g.dart';

@UseDao(tables: [AtualizacaoStatus])
class AtualizacaoStatusDAO extends DatabaseAccessor<Database> with _$AtualizacaoStatusDAOMixin {
  AtualizacaoStatusDAO(Database db) : super(db);
}
