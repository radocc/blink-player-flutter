import 'package:moor/moor.dart';

class Configuracoes extends Table {
  @override
  String get tableName => 'configuracao';

  IntColumn get id => integer().autoIncrement()();
  BoolColumn get atualizaInicio =>
      boolean().withDefault(const Constant(true))();
  TextColumn get atualizacaoHorarios => text()
      .withDefault(const Constant('08:00:00;10:00:00;13:00:00;16:00:00'))
      .nullable()();
}
