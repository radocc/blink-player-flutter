import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
import 'package:blink/app/database/entity/sequencia_conteudo_entity.dart';
import 'package:blink/app/database/entity/template_entity.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:moor/moor.dart';

part 'conteudo_dao.g.dart';

@UseDao(tables: [Conteudos, Templates, SequenciaConteudos])
class ConteudoDAO extends AbstractDAO<Conteudo> with _$ConteudoDAOMixin {
  ConteudoDAO(Database db) : super(db) {
    table = conteudos;
  }

  // Future addValueEquipments(Conteudo entity) {
  //   return into(conteudos).insertOnConflictUpdate(entity);
  // }
  
  Future<List<Conteudo>> getAllConteudos() async {
    return (select(conteudos)).get();
  } 

  Future<List<ConteudoTemplateModel>> getAllConteudoWithTemplate() async {
    final query = await (select(conteudos)
          ..orderBy([(t) => OrderingTerm(expression: sequenciaConteudos.idSequencia)]))
        .join([
      leftOuterJoin(templates, templates.id.equalsExp(conteudos.idTemplate)),
      innerJoin(sequenciaConteudos, sequenciaConteudos.id.equalsExp(conteudos.id))
    ]).get();

    return query.map((row) {
      return ConteudoTemplateModel(
        conteudo: row.readTable(conteudos),
        template: row.readTable(templates),
      );
    }).toList();
  }
}
