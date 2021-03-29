import 'dart:io';

import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/dao/equipamento_dao.dart';
import 'package:blink/app/database/dao/player_dados_dao.dart';
import 'package:blink/app/database/entity/conteudo_agendamento_entity.dart';
import 'package:blink/app/database/entity/conteudo_campo_entity.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
import 'package:blink/app/database/entity/equipamentos_entity.dart';
import 'package:blink/app/database/entity/player_dados.dart';
import 'package:blink/app/database/entity/playlist_conteudo_entity.dart';
import 'package:blink/app/database/entity/playlist_entity.dart';
import 'package:blink/app/database/entity/noticia_entity.dart';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@UseMoor(tables: [
  Conteudos,
  ConteudoAgendamentos,
  ConteudoCampos,
  Equipamentos,
  PlayerDados,
  Playlists,
  PlaylistConteudos,
  Noticias
])
class Database extends _$Database {
  PlayerDadosDAO playerDAO;
  EquipamentoDAO equipsDAO;
  ConteudoDAO conteudoDAO;

  // static Database instance = Database._internal();
  // Database._internal()
  //     : super(FlutterQueryExecutor.inDatabaseFolder(path: 'blink.sqlite')) {
  //   playerDAO = PlayerDadosDAO(this);
  // }

  static Database instance = Database._internal();
  Database._internal()
      : super(LazyDatabase(() async {
          final dbFolder = await getApplicationDocumentsDirectory();
          final file = File(p.join(dbFolder.path, 'blink.sqlite'));
          return VmDatabase(file);
        })) {
    playerDAO = PlayerDadosDAO(this);
    equipsDAO = EquipamentoDAO(this);
    conteudoDAO = ConteudoDAO(this);
  }

  @override
  int get schemaVersion => 3;

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
