import 'package:moor/moor.dart';

class Equipamentos extends Table {
  String get tableName => 'equipamentos';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(max: 200).nullable()();
  TextColumn get uuid => text()();
  DateTimeColumn get dataCadastro => dateTime().nullable()();
  DateTimeColumn get dataAlteracao => dateTime().nullable()();
  BoolColumn get ativado => boolean()();
}
