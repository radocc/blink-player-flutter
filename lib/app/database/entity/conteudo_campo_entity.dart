import 'package:moor/moor.dart';
class ConteudoCampos extends Table {
  String get tableName => 'conteudo_campo';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withDefault(const Constant('')).withLength(max:100).nullable()();
  IntColumn get tipo => integer().withDefault(const Constant(0)).nullable()();
  IntColumn get limite => integer()();
  TextColumn get valor => text().withDefault(const Constant('')).withLength(max:500).nullable()();
  BoolColumn get cadastro => boolean()();
  TextColumn get fonte => text().withLength(max:255)();
  IntColumn get fonteTamanho => integer()();
  TextColumn get fonteCor => text().withLength(max: 9)();
  RealColumn get top => real()();  
  RealColumn get left => real()();  
  IntColumn get sequencia => integer()();
  IntColumn get idConteudo => integer()();
  DateTimeColumn get dataCadastro => dateTime()();
  DateTimeColumn get dataAlteracao => dateTime()();
  IntColumn get versao => integer()();
  BoolColumn get deletado => boolean()();

}