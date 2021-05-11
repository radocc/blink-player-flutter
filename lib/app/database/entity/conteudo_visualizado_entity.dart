import 'package:moor/moor.dart';

@DataClassName("ConteudoVisualizado")
class ConteudosVisualizados extends Table {
  String get tableName => 'conteudovisualizado';
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idApp => integer().nullable()();
  IntColumn get idConteudo => integer().nullable()();
  IntColumn get idPlayer => integer().nullable()();
  IntColumn get idNoticia => integer().nullable()();
  IntColumn get quantidade => integer().nullable()();
  TextColumn get horas => text().nullable()();
  DateTimeColumn get dataExecucao => dateTime().nullable()();
  DateTimeColumn get dataAlteracao => dateTime().nullable()();
}
