import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/previsao_tempo_imagem_entity.dart';
import 'package:moor/moor.dart';

part 'previsao_tempo_imagem_dao.g.dart';

@UseDao(tables: [PrevisaoTempoImagens])
class PrevisaoTempoImagemDAO extends AbstractDAO<PrevisaoTempoImagem> with _$PrevisaoTempoImagemDAOMixin {
  PrevisaoTempoImagemDAO(Database db) : super(db) {
    table = previsaoTempoImagens;
  }

}
