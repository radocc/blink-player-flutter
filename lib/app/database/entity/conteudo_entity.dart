import 'package:moor_flutter/moor_flutter.dart';

class Conteudo extends Table {
  String get tableName => 'conteudo';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get titulo => text().withDefault(const Constant('')).withLength(max: 200).nullable()();
  IntColumn get idTipoConteudo => integer()();
  IntColumn get idTemplate => integer().withDefault(const Constant(0)).nullable()();
  TextColumn get arquivoFormato => text().withLength(max:10)();
  IntColumn get tempoExibicao => integer().withDefault(const Constant(0)).nullable()();
  IntColumn get idCidade => integer()();
  TextColumn get url => text().withLength(max:500)();
  TextColumn get filtroAssuntos => text().withLength(max:500)();
  IntColumn get timerRequest => integer()();
  DateTimeColumn get dataCadastro => dateTime()();
  DateTimeColumn get dataAlteracao => dateTime()();
  IntColumn get versao => integer()();

}