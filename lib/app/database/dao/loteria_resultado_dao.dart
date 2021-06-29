import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/loteria_resultado_entity.dart';
import 'package:moor/moor.dart';

part 'loteria_resultado_dao.g.dart';

@UseDao(tables: [LoteriaResultados])
class LoteriaResultadosDAO extends AbstractDAO<LoteriaResultado> with _$LoteriaResultadosDAOMixin {
  
  LoteriaResultadosDAO(Database db) : super(db) {
    table = loteriaResultados;
  }

  Future<LoteriaResultado> buscarResultado(int idLoteria) async {
    return (select(loteriaResultados)..where((tbl) => tbl.idLoteria.equals(idLoteria))
       ..orderBy([(t) => OrderingTerm(expression: t.dataSorteio, mode: OrderingMode.desc )])
       ..limit(1)).getSingleOrNull();
  }

}
