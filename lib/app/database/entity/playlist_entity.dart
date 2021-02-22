import 'package:moor/moor.dart';
class Playlist extends Table {
  String get tableName => 'playlist';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withDefault(const Constant('')).withLength(max:100).nullable()();
  BoolColumn get campanha => boolean()();
  DateTimeColumn get dataInicio => dateTime().nullable()();
  DateTimeColumn get dataFim => dateTime().nullable()();
  IntColumn get regraExibicao => integer().nullable()();
  IntColumn get idPublicacao => integer().nullable()();
  DateTimeColumn get dataCadastro => dateTime()();
  DateTimeColumn get dataAlteracao => dateTime()();
  IntColumn get versao => integer()();
  BoolColumn get deletado => boolean()();
  IntColumn get idUsuarioCadastro => integer().nullable()();
  IntColumn get idUsuarioAlteracao => integer().nullable()();
  
}