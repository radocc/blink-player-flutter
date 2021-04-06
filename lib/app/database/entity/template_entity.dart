import 'package:moor/moor.dart';

class Templates extends Table {
  @override
  String get tableName => 'template';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(max: 200).nullable()();
  IntColumn get status => integer()();
  IntColumn get idTipoConteudo => integer()();
  IntColumn get idArquivo => integer()();
}
