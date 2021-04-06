import 'package:moor/moor.dart';

@DataClassName('AtualizacaoStatus')
class AtualizacoesStatus extends Table {
  @override
  String get tableName => 'atualizacaostatus';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get idAtualizacao =>
      integer().customConstraint('NOT NULL REFERENCES atualizacao(id)')();
  DateTimeColumn get data => dateTime().withDefault(Constant(DateTime.now()))();
  TextColumn get mensagem => text().nullable()();
  IntColumn get status => integer()();
}
