import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/equipamentos_entity.dart';
import 'package:moor/moor.dart';

part 'equipamento_dao.g.dart';

@UseDao(tables: [Equipamentos])
class EquipamentoDAO extends AbstractDAO<Equipamento> with _$EquipamentoDAOMixin {
  
  EquipamentoDAO(Database db) : super(db){
    table = equipamentos;
  }

  Future addValueEquipments(Equipamento entity) {
    return into(equipamentos).insertOnConflictUpdate(entity);
  }
}
