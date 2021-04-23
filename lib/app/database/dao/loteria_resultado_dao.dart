import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/loteria_entity.dart';
import 'package:moor/moor.dart';

part 'loteria_resultado_dao.g.dart';

@UseDao(tables: [LoteriaResultados])
class LoteriaResultadosDAO extends AbstractDAO<LoteriaResultado> with _$LoteriaResultadosDAOMixin {
  LoteriaResultadosDAO(Database db) : super(db) {
    table = loteriaResultados;
  }


}
