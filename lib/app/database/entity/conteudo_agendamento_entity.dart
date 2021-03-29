import 'package:moor/moor.dart';

class ConteudoAgendamentos extends Table {
  String get tableName => 'conteudo_agendamento';

  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get dataInicio	=> dateTime().withDefault(Constant(DateTime.now())).nullable()();
  DateTimeColumn get dataFim => dateTime().withDefault(Constant(DateTime.now())).nullable()();
  TextColumn get diaSemana => text().withDefault(const Constant('')).withLength(max:255).nullable()();
  DateTimeColumn get horaInicio => dateTime().withDefault(Constant(DateTime.now())).nullable()();
  DateTimeColumn get horaFim => dateTime().withDefault(Constant(DateTime.now())).nullable()();
  IntColumn get idConteudo => integer().customConstraint('NULL REFERENCES conteudo(id)')();
  DateTimeColumn get dataCadastro => dateTime()();
  DateTimeColumn get dataAlteracao => dateTime()();
  IntColumn get versao => integer()();
  BoolColumn get deletado => boolean()();

}