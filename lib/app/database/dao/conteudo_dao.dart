import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
import 'package:moor/moor.dart';

part 'conteudo_dao.g.dart';

@UseDao(tables: [Conteudos])
class ConteudoDAO extends DatabaseAccessor<Database> with _$ConteudoDAOMixin {
  ConteudoDAO(Database db) : super(db);

  Future addValueEquipments(Conteudo entity) {
    return into(conteudos).insertOnConflictUpdate(entity);
  }
}
