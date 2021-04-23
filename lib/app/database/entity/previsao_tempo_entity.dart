import 'package:moor/moor.dart';

class PrevisaoTempos extends Table {
  String get tableName => 'previsao_tempo';

  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get data => dateTime().nullable()();
  IntColumn get idCidade => integer().nullable()();
  TextColumn get jsonData => text().nullable()();

}

