import 'package:moor/moor.dart';

class Equipamentos extends Table {
  String get tableName => 'equipamento';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(max: 200).nullable()();
  TextColumn get nomePlayer => text().withLength(max: 200).nullable()();
  IntColumn get idPlayer => integer().nullable()();
  TextColumn get schemaName => text().nullable()();
  TextColumn get uuid => text().nullable()();
  TextColumn get identificador => text().nullable()();
  TextColumn get idOneSignal => text().nullable()();
  DateTimeColumn get dataCadastro => dateTime().nullable()();
  DateTimeColumn get dataAlteracao => dateTime().nullable()();
  BoolColumn get ativado => boolean()();
}
