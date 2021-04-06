import 'package:moor/moor.dart';

@DataClassName('AtualizacaoConteudo')
class AtualizacoesConteudo extends Table {
  @override
  String get tableName => 'atualizacaoconteudo';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get idAtualizacao =>
      integer().customConstraint('NOT NULL REFERENCES atualizacao(id)')();
  IntColumn get tipoObjeto => integer()();
  IntColumn get idObjeto => integer()();
  DateTimeColumn get data =>
      dateTime().withDefault(Constant(DateTime.now()))();
}
