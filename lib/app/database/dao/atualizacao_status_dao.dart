import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/atualizacao_status_entity.dart';
import 'package:moor/moor.dart';

part 'atualizacao_status_dao.g.dart';

@UseDao(tables: [AtualizacoesStatus])
class AtualizacaoStatusDAO extends AbstractDAO<AtualizacaoStatus> with _$AtualizacaoStatusDAOMixin {
  
  AtualizacaoStatusDAO(Database db) : super(db){
    table = atualizacoesStatus;
  }

 Future save(AtualizacaoStatus entity)async {
    if ((entity as dynamic).id == null){
      var row = await into(atualizacoesStatus).insertOnConflictUpdate(entity);
      print('RoW-save ' + row.toString());
      var ret = (select(atualizacoesStatus)..where((dynamic tbl) => tbl.id.equals(row))).getSingleOrNull();
      return ret;
    }else {
      await update(atualizacoesStatus).replace(entity);
      var ret = (select(atualizacoesStatus)..where((dynamic tbl) => tbl.id.equals((entity as dynamic).id))).getSingleOrNull();
      return ret;
    }
  }


  Future<AtualizacaoStatus> getUltimo(int identificacao) async {
    var slc = (select(atualizacoesStatus)..where((tbl) {
        return tbl.identificacao.equals(identificacao) & tbl.dataFinal.isNotNull();
      })..orderBy([
      (u) =>
       OrderingTerm(expression: u.id, mode: OrderingMode.desc)
    ])..limit(1));
    return slc.getSingleOrNull();
  } 

}
