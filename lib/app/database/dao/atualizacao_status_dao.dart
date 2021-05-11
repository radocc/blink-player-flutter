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



  Future<AtualizacaoStatus> getUltimo(int identificacao) async {
    return (select(atualizacoesStatus)..where((tbl) => tbl.identificacao.equals(identificacao)
    & isNotNull(tbl.dataFinal))..orderBy([
      (u) =>
       OrderingTerm(expression: u.id, mode: OrderingMode.desc)
    ])..limit(1)).getSingle();
  } 

}
