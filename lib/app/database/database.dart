import 'dart:io';

import 'package:blink/app/database/dao/atualizacao_conteudo_dao.dart';
import 'package:blink/app/database/dao/atualizacao_dao.dart';
import 'package:blink/app/database/dao/atualizacao_status_dao.dart';
import 'package:blink/app/database/dao/configuracao_dao.dart';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/dao/equipamento_dao.dart';
import 'package:blink/app/database/dao/noticia_dao.dart';
import 'package:blink/app/database/dao/player_dados_dao.dart';
import 'package:blink/app/database/dao/previsao_tempo_imagem_dao.dart';
import 'package:blink/app/database/dao/template_dao.dart';
import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/entity/atualizacao_conteudo_entity.dart';
import 'package:blink/app/database/entity/atualizacao_entity.dart';
import 'package:blink/app/database/entity/atualizacao_status_entity.dart';
import 'package:blink/app/database/entity/configuracao_entity.dart';
import 'package:blink/app/database/entity/conteudo_agendamento_entity.dart';
import 'package:blink/app/database/entity/conteudo_campo_entity.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
import 'package:blink/app/database/entity/equipamentos_entity.dart';
import 'package:blink/app/database/entity/loteria_resultado_entity.dart';
import 'package:blink/app/database/entity/player_dados.dart';
import 'package:blink/app/database/entity/playlist_conteudo_entity.dart';
import 'package:blink/app/database/entity/playlist_entity.dart';
import 'package:blink/app/database/entity/noticia_entity.dart';
import 'package:blink/app/database/entity/template_entity.dart';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'dao/loteria_resultado_dao.dart';
import 'dao/previsao_tempo_dao.dart';
import 'entity/previsao_tempo_entity.dart';
import 'entity/previsao_tempo_imagem_entity.dart';
import 'entity/sequencia_conteudo_entity.dart';

part 'database.g.dart';

@UseMoor(tables: [
  Configuracoes,
  Atualizacoes,
  AtualizacoesStatus,
  AtualizacoesConteudo,
  Templates,
  Conteudos,
  ConteudoAgendamentos,
  ConteudoCampos,
  Equipamentos,
  PlayerDados,
  Playlists,
  PlaylistConteudos,
  Noticias,
  PrevisaoTempoImagens,
  LoteriaResultados,
  PrevisaoTempos,
  SequenciaConteudos,
])
class Database extends _$Database {
  PlayerDadosDAO playerDAO;
  EquipamentoDAO equipsDAO;
  ConteudoDAO conteudoDAO;
  NoticiaDAO noticiaDAO;
  ConfiguracaoDAO configuracaoDAO;
  AtualizacaoDAO atualizacaoDAO;
  AtualizacaoStatusDAO atualizacaoStatusDAO;
  AtualizacaoConteudoDAO atualizacaoConteudoDAO;
  TemplateDAO templateDAO;
  PrevisaoTempoImagemDAO previsaoTempoDAO;
  LoteriaResultadosDAO loteriaResultadosDAO;
  PrevisaoTemposDAO previsaoTemposDAO;
  SequenciaConteudoDAO sequenciaConteudoDAO;

  // static Database instance = Database._internal();
  // Database._internal()
  //     : super(FlutterQueryExecutor.inDatabaseFolder(path: 'blink.sqlite')) {
  //   playerDAO = PlayerDadosDAO(this);
  //   equipsDAO = EquipamentoDAO(this);
  //   conteudoDAO = ConteudoDAO(this);
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
    noticiaDAO = NoticiaDAO(this);
    configuracaoDAO = ConfiguracaoDAO(this);
    atualizacaoDAO = AtualizacaoDAO(this);
    atualizacaoStatusDAO = AtualizacaoStatusDAO(this);
    atualizacaoConteudoDAO = AtualizacaoConteudoDAO(this);
    templateDAO = TemplateDAO(this);
    previsaoTempoDAO = PrevisaoTempoImagemDAO(this);
    loteriaResultadosDAO = LoteriaResultadosDAO(this);
    previsaoTemposDAO = PrevisaoTemposDAO(this);
    sequenciaConteudoDAO = SequenciaConteudoDAO(this);
  }

  @override
  int get schemaVersion => 6;

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
