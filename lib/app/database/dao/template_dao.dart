import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/template_entity.dart';
import 'package:moor/moor.dart';

part 'template_dao.g.dart';

@UseDao(tables: [Templates])
class TemplateDAO extends DatabaseAccessor<Database> with _$TemplateDAOMixin {
  TemplateDAO(Database db) : super(db);
}
