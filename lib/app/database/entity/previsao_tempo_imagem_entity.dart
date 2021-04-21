import 'package:moor/moor.dart';

class PrevisaoImagemTempos extends Table {
  @override
  String get tableName => 'previsao_tempo_imagem';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get texto => text().withLength(max: 200).nullable()();
  TextColumn get sigla => text().withLength(max: 200).nullable()();
  TextColumn get nomeArquivo => text().withLength(max: 200).nullable()();
  IntColumn get idArquivo => integer()();
  TextColumn get descricao => text().withLength(max: 200).nullable()();
}
