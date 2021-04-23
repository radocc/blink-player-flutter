import 'package:moor/moor.dart';

class Noticias extends Table {
  String get tableName => 'noticia';

  IntColumn get idArquivo => integer().nullable()();
  IntColumn get idFonteNoticia => integer().nullable()();
  IntColumn get idNoticiaEditoria => integer().nullable()();
  TextColumn get nomeArquivo => text().nullable()();
  TextColumn get link => text().nullable()();
  TextColumn get titulo => text().nullable()();
  DateTimeColumn get dataPublicadao => dateTime().nullable()();
  IntColumn get idTemplate => integer().nullable()();
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get idConteudo => integer().nullable()();
  TextColumn get autor => text().nullable().nullable()();
  TextColumn get descricao => text().nullable()();
}
