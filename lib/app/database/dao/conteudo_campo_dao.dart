import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_campo_entity.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'conteudo_campo_dao.g.dart';

@UseDao(tables: [ConteudoCampo])
class ConteudoCampoDAO  extends DatabaseAccessor<Database> with _$ConteudoCampoDAOMixin{

  ConteudoCampoDAO(Database db) : super(db);

}