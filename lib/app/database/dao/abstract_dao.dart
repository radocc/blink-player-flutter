import 'package:blink/app/database/database.dart';
import 'package:moor/moor.dart';

abstract class AbstractDAO<T extends Insertable<DataClass>>
    extends DatabaseAccessor<Database> {
  TableInfo _table;
  AbstractDAO(Database db) : super(db);

  Future save(T entity) {
    return into(_table).insertOnConflictUpdate(entity);
  }

  set table(TableInfo value) => _table = value;
}
