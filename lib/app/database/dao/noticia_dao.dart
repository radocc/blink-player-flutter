import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/noticia_entity.dart';
import 'package:moor/moor.dart';

part 'noticia_dao.g.dart';

@UseDao(tables: [Noticias])
class NoticiaDAO extends DatabaseAccessor<Database> with _$NoticiaDAOMixin {
  NoticiaDAO(Database db) : super(db);

  Future saveValueNotice(Noticia entity) {
    return into(noticias).insertOnConflictUpdate(entity);
  }
}
