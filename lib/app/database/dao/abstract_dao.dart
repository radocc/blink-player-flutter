import 'package:blink/app/database/database.dart';
import 'package:moor/moor.dart';

abstract class AbstractDAO<T extends Insertable<DataClass>>
    extends DatabaseAccessor<Database> {
  TableInfo _table;
  AbstractDAO(Database db) : super(db);

  Future save(T entity)async {
    if ((entity as dynamic).id == null){
      var row = await into(_table).insertOnConflictUpdate(entity);
      print('RoW-save ' + row.toString());
      var ret = (select(_table)..where((dynamic tbl) => tbl.id.equals(row))).getSingle();
      return ret;
    }else {
      await update(_table).replace(entity);
      var ret = (select(_table)..where((dynamic tbl) => tbl.id.equals((entity as dynamic).id))).getSingle();
      return ret;
    }
  }

  set table(TableInfo value) => _table = value;
}
