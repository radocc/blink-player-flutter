import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/previsao_tempo_entity.dart';
import 'package:moor/moor.dart';

part 'previsao_tempo_dao.g.dart';

@UseDao(tables: [PrevisaoTempos])
class PrevisaoTemposDAO extends AbstractDAO<PrevisaoTempo> with _$PrevisaoTemposDAOMixin {
  PrevisaoTemposDAO(Database db) : super(db) {
    table = previsaoTempos;
  }
}
