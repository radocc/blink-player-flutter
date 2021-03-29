import 'package:moor/moor.dart';

class Conteudo extends Table {
  String get tableName => 'conteudo';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get idTipoConteudo => integer()();
  IntColumn get tipoArquivo => integer()();
  TextColumn get nomeArquivo => text()();
  IntColumn get idTemplate => integer()();
  TextColumn get titulo =>
      text().withDefault(const Constant('')).withLength(max: 200).nullable()();
  IntColumn get tempoExibicao =>
      integer().withDefault(const Constant(0)).nullable()();
  IntColumn get status => integer().withDefault(const Constant(0)).nullable()();
  DateTimeColumn get horaInicio => dateTime()();
  DateTimeColumn get horaFim => dateTime()();
  TextColumn get filtros => text().withLength(max: 10)();
  IntColumn get idCidade => integer()();
  TextColumn get cidade => text().withLength(max: 500)();
  TextColumn get uf => text().withLength(max: 500)();
  TextColumn get previsao => text().withLength(max: 500)();
  TextColumn get campos => text().withLength(max: 500)();
  IntColumn get idArquivo => integer()();
  //Loteria

}
