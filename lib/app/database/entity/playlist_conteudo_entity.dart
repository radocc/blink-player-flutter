import 'package:moor/moor.dart';
class PlaylistConteudos extends Table {
  String get tableName => 'playlist_conteudo';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get idConteudo => integer().customConstraint('NOT NULL REFERENCES conteudo(id)')();
  IntColumn get idPlaylist => integer().customConstraint('NOT NULL REFERENCES playlist(id)')();
  IntColumn get idVinculado => integer().nullable()();
  IntColumn get sequencia => integer()();
  DateTimeColumn get dataCadastro => dateTime()();
  DateTimeColumn get dataAlteracao => dateTime()();
  IntColumn get versao => integer()();
  BoolColumn get deletado => boolean()();

}