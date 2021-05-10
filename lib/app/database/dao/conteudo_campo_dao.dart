import 'package:blink/app/database/database.dart';
import 'package:moor/moor.dart';

part 'conteudo_campo_dao.g.dart';

@UseDao(tables: [ConteudoCampo])
class ConteudoCampoDAO  extends DatabaseAccessor<Database> with _$ConteudoCampoDAOMixin{

  ConteudoCampoDAO(Database db) : super(db);

}