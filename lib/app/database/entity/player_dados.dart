import 'package:moor/moor.dart';
class PlayerDados extends Table {
  String get tableName => 'player_dados';

  IntColumn get id => integer().autoIncrement()();
  RealColumn get bateria => real().nullable()();
  RealColumn get sinalWifi => real().nullable()();
  TextColumn get nomeWifi => text().withLength(max:100).nullable()();
  IntColumn get processador => integer().nullable()();
  IntColumn get memoria => integer().nullable()();
  IntColumn get idPlayer => integer().nullable()();
  DateTimeColumn get dataCadastro => dateTime().nullable()();
  DateTimeColumn get dataAlteracao => dateTime().nullable()();
  
}