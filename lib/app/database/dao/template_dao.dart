import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/template_entity.dart';
import 'package:moor/moor.dart';

part 'template_dao.g.dart';

@UseDao(tables: [Templates])
class TemplateDAO extends AbstractDAO<Template> with _$TemplateDAOMixin {
  TemplateDAO(Database db) : super(db) {
    table = templates;
  }
}
