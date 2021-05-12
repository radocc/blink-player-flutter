import 'package:moor/moor.dart';

@DataClassName('AtualizacaoStatus')
class AtualizacoesStatus extends Table {
  @override
  String get tableName => 'atualizacaostatus';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get idAtualizacao => integer().customConstraint('NOT NULL REFERENCES atualizacao(id)')();
  DateTimeColumn get dataInicial => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get dataDownload => dateTime().nullable()();
  DateTimeColumn get dataProcessado => dateTime().nullable()();
  DateTimeColumn get dataFinal => dateTime().nullable()();
  TextColumn get mensagem => text().nullable().nullable()();
  IntColumn get identificacao => integer().nullable()();

 
}
