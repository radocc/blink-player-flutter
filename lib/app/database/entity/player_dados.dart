import 'package:moor/moor.dart';
class PlayerDados extends Table {
  String get tableName => 'player_dados';

  IntColumn get id => integer().autoIncrement()();
  RealColumn get bateria => real().nullable()();
  RealColumn get sinalWifi => real().nullable()();
  TextColumn get nomeWifi => text().withLength(max:100).nullable()();
  IntColumn get processador => integer().nullable()();
  IntColumn get memoria => integer().nullable()();
  IntColumn get idPlayerEquipamento => integer().nullable()();
  DateTimeColumn get dataLigado => dateTime()();
  DateTimeColumn get dataCadastro => dateTime()();
  DateTimeColumn get dataAlteracao => dateTime()();
  IntColumn get versao => integer()();
  BoolColumn get deletado => boolean()();
  IntColumn get idUsuarioCadastro => integer().nullable()();
  IntColumn get idUsuarioAlteracao => integer().nullable()();
  
}