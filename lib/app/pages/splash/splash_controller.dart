import 'dart:async';
import 'dart:io';

import 'package:blink/app/database/dao/atualizacao_conteudo_dao.dart';
import 'package:blink/app/database/dao/atualizacao_dao.dart';
import 'package:blink/app/database/dao/atualizacao_status_dao.dart';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/dao/equipamento_dao.dart';
import 'package:blink/app/database/dao/loteria_resultado_dao.dart';
import 'package:blink/app/database/dao/noticia_dao.dart';
import 'package:blink/app/database/dao/player_dados_dao.dart';
import 'package:blink/app/database/dao/previsao_tempo_dao.dart';
import 'package:blink/app/database/dao/previsao_tempo_imagem_dao.dart';
import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/services/login_service.dart';
import 'package:blink/app/services/progress_service.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:blink/app/shared/events.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final LoginService service;
  final SincronizaService syncService;
  final ProgressService progressService;

  StreamSubscription<bool> streamEquipBody;
  StreamController<Equipamento> streamPostServer =
      StreamController<Equipamento>.broadcast();
  EquipamentoDAO equipamentoDAO;
  PlayerDadosDAO playerDAO;
  AtualizacaoDAO atualizacaoDAO;
  AtualizacaoStatusDAO atualizacaoStatusDAO;
  ConteudoDAO conteudoDAO;
  ConteudoVisualizadoDAO conteudoVisualizadoDAO;
  LoteriaResultadosDAO loteriaResultadosDAO;
  PrevisaoTemposDAO previsaoTemposDAO;
  PrevisaoTempoImagemDAO previsaoTempoImagemDAO;
  SequenciaConteudoDAO sequenciaConteudoDAO;
  NoticiaDAO noticiaDAO;
  AtualizacaoConteudoDAO atualizacaoConteudoDAO;
  Equipamento equipamento;

  var controller = CarouselController();
  List<File> files;

  _SplashControllerBase(this.service, this.syncService, this.progressService);

  onInit() async {
    equipamentoDAO = Database.instance.equipamentoDAO;
    try {
      streamEquipBody = Events.equipBody.stream.listen((value) {
        print('STREAM: $value');
        if (value) {
          login();
        }
      });
    } on StateError catch (e) {
      print(e.stackTrace);
      await streamEquipBody.cancel();
      await Events.equipBody.close();
      onInit();
    }
  }

  Future sincronizar() async {
    await syncService.iniciar();
    var valueDir = await load();
    if (valueDir > 0) {
      return true;
    } else {
      await Modular.to.pushNamed('/empityCarousel');
    }
    //return true;
  }

    Future setLandscape() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  Future<Equipamento> login() async {
    try {
      //var valueDir = await load();
      var response = await service.logar();
      equipamento = await equipamentoDAO.getEquipamento();

      //if (response.schemaName != null && response.idPlayer != 0) {
      if (response.schemaName != equipamento.schemaName &&
          response.idPlayer != equipamento.idPlayer) {
        equipamentoDAO.deleteAll();
        playerDAO.deleteAll();
        atualizacaoDAO.deleteAll();
        atualizacaoStatusDAO.deleteAll();
        conteudoDAO.deleteAll();
        conteudoVisualizadoDAO.deleteAll();
        loteriaResultadosDAO.deleteAll();
        previsaoTemposDAO.deleteAll();
        previsaoTempoImagemDAO.deleteAll();
        sequenciaConteudoDAO.deleteAll();
        noticiaDAO.deleteAll();
        atualizacaoConteudoDAO.deleteAll();
      }
      //}

      if (!response.ativado) {
        await Modular.to.pushNamed('/ative', arguments: {
          'id': response.id.toString(),
          'nome': response.nome,
          'data': DateFormat('dd-MM-yyyy HH:mm').format(DateTime.now()),
          'uuid': response.uuid
        });
        streamPostServer.add(response);
      } else {
        streamPostServer.add(response);
      }

     // if (valueDir > 0) {
        return response;
     // } else {
    //    await Modular.to.pushNamed('/empityCarousel');
    //  }
    } on DioError catch (e) {
      print(e.response.statusCode);
      streamPostServer.addError(e);
      throw Exception("Exception occured: $e");
    }
  }

  dispose() {
    streamEquipBody.cancel();
    Events.equipBody.close();
  }

  Future<int> load() async {
    this.files = [];

    Directory directory = await getApplicationDocumentsDirectory();
    List<FileSystemEntity> files = directory.listSync();

    print(directory.path);

    for (FileSystemEntity file in files) {
      if (file is File) {
        String ext = extension(file.path);
        // Verifica se é uma imagem ou video e adiciona na lista
        if (this.controller.extVideo.contains(ext) ||
            controller.extImg.contains(ext)) {
          this.files.add(file);
        }
      }
    }
    print('Qtd. Imagem/video: ' + this.files.length.toString());
    return this.files.length;
  }
}
