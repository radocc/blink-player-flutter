import 'dart:io';

import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/tipoconteudo_enum.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/noticia_service.dart';
import 'package:blink/app/services/previsao_imagem_tempo_service.dart';
import 'package:blink/app/services/previsao_tempo_service.dart';
import 'package:blink/app/services/sequencia_conteudo_service.dart';
import 'package:blink/app/services/template_service.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class SincronizaService {
  ConteudoService conteudoService;
  ArquivoService arquivoService;
  NoticiaService noticiaService;
  TemplateService templateService;
  PrevisaoImagemTempoService previsaoImagemService;
  PrevisaoTempoService previsaoTempoService;
  SequenciaConteudoService sequenciaConteudoService;

  SincronizaService(
      this.conteudoService,
      this.noticiaService,
      this.templateService,
      this.arquivoService,
      this.previsaoImagemService,
      this.previsaoTempoService,
      this.sequenciaConteudoService);

  Future iniciar() async {
    int sizeDir = await load();

    if (sizeDir == 0) {
      await downloadConteudos();
      await downloadTemplates();
    }
    
    //await downloadPrevisaoImagemTempo();
    //await downloadPrevisaoTempo();
    await downloadSequenciaConteudo();
    return true;
  }

  SequenciaConteudoDAO dao = Database.instance.sequenciaConteudoDAO;
  var controller = CarouselController();
  List<File> files;

  Future downloadConteudos() async {
    //**Faz o download dos conteudos */
    var conteudos = await conteudoService.download();
    for (var conteudo in conteudos) {
      var tipo = conteudo.idTipoConteudo;
      if (tipo == TipoConteudo.IMAGENS.index ||
          tipo == TipoConteudo.VIDEO.index) {
        await arquivoService.downloadMidia(
            conteudo.idArquivo, conteudo.nomeArquivo, (_, __) {});
      } else if (tipo == TipoConteudo.COTACAO.index) {}
    }
  }

  Future downloadTemplates() async {
    //**Faz o download dos Templates */
    var templates = await templateService.download();
    for (var template in templates) {
      await arquivoService.downloadMidia(
          template.idArquivo, template.nomeArquivo, (_, __) {});
    }
  }

  Future downloadPrevisaoImagemTempo() async {
    //**Faz o download das Imagens de Previsão de Tempo */
    var previsaoImgTempo = await previsaoImagemService.download();
    for (var previsaoImagem in previsaoImgTempo) {
      await arquivoService.downloadMidia(
          previsaoImagem.idArquivo, previsaoImagem.nomeArquivo, (_, __) {});
    }
  }

  Future downloadPrevisaoTempo() async {
    //**Faz o download das Previsões de Tempo */
    await templateService.download();
  }

  Future downloadSequenciaConteudo() async {
    //**Faz o download da Sequencia de Conteudo e Template */
    List<SequenciaConteudo> sizeTable = await dao.getAllSequence();

    if (sizeTable.length > 0) {
      try {
        await dao.deleteAllSequence();
      } catch (e) {
        print('Erro ao excluir ${e.body}');
      }
    }
    await sequenciaConteudoService.download();
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
