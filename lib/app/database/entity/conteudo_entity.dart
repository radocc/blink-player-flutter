import 'package:moor/moor.dart';

class Conteudos extends Table {
  String get tableName => 'conteudo';

  IntColumn get id => integer()();
  IntColumn get status => integer().withDefault(const Constant(0)).nullable()();
  IntColumn get idTipoConteudo => integer()();
  IntColumn get tipoArquivo => integer().nullable()();
  TextColumn get nomeArquivo => text().nullable()();
  IntColumn get idTemplate => integer().nullable()();
  TextColumn get titulo => text().withDefault(const Constant('')).withLength(max: 200).nullable()();
  IntColumn get tempoExibicao => integer().withDefault(const Constant(0)).nullable()();
  DateTimeColumn get horaInicio => dateTime().nullable()();
  DateTimeColumn get horaFim => dateTime().nullable()();
  TextColumn get filtros => text().withLength(max: 10).nullable()();
  IntColumn get idCidade => integer().nullable()();
  TextColumn get cidade => text().withLength(max: 500).nullable()();
  TextColumn get uf => text().withLength(max: 500).nullable()();
  TextColumn get previsao => text().withLength(max: 5000).nullable()();
  TextColumn get campos => text().withLength(max: 10000).nullable()();
  IntColumn get idArquivo => integer().nullable()();
  IntColumn get audio => integer().nullable()();
  IntColumn get tipo => integer().nullable()();
  IntColumn get idLoteria => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id, status};
}
