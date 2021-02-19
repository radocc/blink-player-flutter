import 'package:blink/app/database/dao/player_dados_dao.dart';
import 'package:blink/app/database/entity/conteudo_agendamento_entity.dart';
import 'package:blink/app/database/entity/conteudo_campo_entity.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
import 'package:blink/app/database/entity/player_dados.dart';
import 'package:blink/app/database/entity/playlist_conteudo_entity.dart';
import 'package:blink/app/database/entity/playlist_entity.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@UseMoor(tables: [
  Conteudo,
  ConteudoAgendamento,
  ConteudoCampo,
  PlayerDados,
  Playlist,
  PlaylistConteudo
])
class Database extends _$Database {
  PlayerDadosDAO playerDAO;

  static Database instance = Database._internal();
  Database._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'blink.sqlite')) {
    playerDAO = PlayerDadosDAO(this);
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(onCreate: (Migrator m) {
      return m.createAll();
    }, onUpgrade: (Migrator m, int from, int to) async {
      //
    }, beforeOpen: (OpeningDetails details) async {
      if (details.wasCreated) {
        //
      }
      await customStatement('PRAGMA foreign_keys = ON');
    });
  }
}
