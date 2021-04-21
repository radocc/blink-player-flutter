import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/previsao_tempo_imagem_entity.dart';
import 'package:moor/moor.dart';

part 'previsao_tempo_imagem_dao.g.dart';

@UseDao(tables: [PrevisaoImagemTempos])
class PrevisaoImagemTemposDAO extends DatabaseAccessor<Database> with _$PrevisaoImagemTemposDAOMixin {
  PrevisaoImagemTemposDAO(Database db) : super(db);

    Future addValuePrevisaoTempo(PrevisaoImagemTempo entity) {
    return into(previsaoImagemTempos).insertOnConflictUpdate(entity);
  }
}
