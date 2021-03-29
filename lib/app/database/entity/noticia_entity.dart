import 'package:moor/moor.dart';

class Noticias extends Table {
  String get tableName => 'conteudo';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get titulo => text()();
  TextColumn get link => text()();
  TextColumn get descricao => text()();
  DateTimeColumn get dataPublicadao => dateTime()();
  IntColumn get idNoticiaEditoria => integer()();
  IntColumn get idFonteNoticia => integer()();
  IntColumn get idConteudo => integer()();

}