import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/atualizacao_entity.dart';
import 'package:moor/moor.dart';

part 'atualizacao_dao.g.dart';

@UseDao(tables: [Atualizacoes])
class AtualizacaoDAO extends AbstractDAO<Atualizacoe> with _$AtualizacaoDAOMixin {
  
  AtualizacaoDAO(Database db) : super(db){
    table = atualizacoes;
  }

  Future save(Atualizacoe entity)async {
    if ((entity as dynamic).id == null){
      var row = await into(atualizacoes).insertOnConflictUpdate(entity);
      print('RoW-save ' + row.toString());
      var ret = (select(atualizacoes)..where((dynamic tbl) => tbl.id.equals(row))).getSingleOrNull();
      return ret;
    }else {
      await update(atualizacoes).replace(entity);
      var ret = (select(atualizacoes)..where((dynamic tbl) => tbl.id.equals((entity as dynamic).id))).getSingleOrNull();
      return ret;
    }
  }

  
}