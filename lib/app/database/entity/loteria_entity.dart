import 'package:moor/moor.dart';

class LoteriaResultados extends Table {
  String get tableName => 'loteria_resultado';

  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get idLoteria => integer().nullable()();
  IntColumn get idArquivo => integer().nullable()();
  TextColumn get jsonPremios => text().nullable()();
  IntColumn get numeros => integer().nullable()();
  DateTimeColumn get dataSorteio => dateTime().nullable()();
  IntColumn get codigoSorteio => integer().nullable()();
  TextColumn get jsonCidades => text().nullable()();
  DateTimeColumn get dataProximoSorteio => dateTime().nullable()();
}

