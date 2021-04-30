import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/sequencia_conteudo_entity.dart';
import 'package:moor/moor.dart';

part 'sequencia_conteudo_dao.g.dart';

@UseDao(tables: [SequenciaConteudos])
class SequenciaConteudoDAO extends AbstractDAO<SequenciaConteudo>
    with _$SequenciaConteudoDAOMixin {
  SequenciaConteudoDAO(Database db) : super(db) {
    table = sequenciaConteudos;
  }

  Future<List<SequenciaConteudo>> getAllSequence() async {
    return (select(sequenciaConteudos)).get();
  }

  Future deleteAllSequence() async {
    return delete(sequenciaConteudos).go();
  }
}
