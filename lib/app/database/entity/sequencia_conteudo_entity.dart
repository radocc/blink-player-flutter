import 'package:moor/moor.dart';
class SequenciaConteudos extends Table {
  String get tableName => 'sequencia_conteudo';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get idSequencia => integer().nullable()();
  
}