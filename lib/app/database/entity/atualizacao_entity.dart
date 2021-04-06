import 'package:moor/moor.dart';

class Atualizacoes extends Table {
  @override
  String get tableName => 'atualizacao';

  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get inicio =>
      dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get fim => dateTime().nullable()();
  TextColumn get mensagem => text().nullable()();
  TextColumn get sequencia => text().nullable()();
}
