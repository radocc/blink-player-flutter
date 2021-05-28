import 'package:blink/app/database/database.dart';
import 'package:moor/moor.dart';

abstract class AbstractDAO<T extends Insertable<DataClass>>
    extends DatabaseAccessor<Database> {
  TableInfo _table;
  AbstractDAO(Database db) : super(db);

  Future save(T entity) async {
    var row = await into(_table).insertOnConflictUpdate(entity);
    print('RoW-save ' + row.toString());
    var ret = (select(_table)..where((dynamic tbl) => tbl.id.equals(row)))
        .getSingle();
    return ret;
  }

  Future deleteAll() async {
    var row = await delete(_table).go();
    return row;
  }

  set table(TableInfo value) => _table = value;
}
