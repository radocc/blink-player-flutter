import 'dart:io';

import 'package:blink/app/database/dao/atualizacao_dao.dart';
import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/equipamento_service.dart';
import 'package:blink/app/services/loteria_resultado_service.dart';
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
  LoteriaResultadoService loteriaResultadoService;
  PrevisaoImagemTempoService previsaoImagemService;
  PrevisaoTempoService previsaoTempoService;
  SequenciaConteudoService sequenciaConteudoService;
  EquipamentoService equipamentoService;
  AtualizacaoDAO atualizacaoDAO = Database.instance.atualizacaoDAO;
  

  SincronizaService(
      this.conteudoService,
      this.noticiaService,
      this.templateService,
      this.arquivoService,
      this.previsaoImagemService,
      this.previsaoTempoService,
      this.sequenciaConteudoService,
      this.loteriaResultadoService,
      this.equipamentoService);

  Future iniciar() async {
    // ignore: missing_required_param
    Atualizacoe atualizacao = Atualizacoe();
    atualizacao.inicio = DateTime.now();
    atualizacao = await atualizacaoDAO.save(atualizacao);
    //int sizeDir = await load();

    // if (sizeDir == 0) {
      
    // }
    try{
      // if (kReleaseMode) {
        await downloadConteudos( atualizacao );
        await downloadTemplates( atualizacao );
        await downloadPrevisaoImagemTempo( atualizacao );
        await downloadPrevisaoTempo( atualizacao );
        await downloadSequenciaConteudo( atualizacao );
        await downloadNoticias( atualizacao );
        await downloadLoteriaResultado( atualizacao );
        await downloadEquipamento( atualizacao );
        atualizacao.fim = DateTime.now();      
        atualizacao = await atualizacaoDAO.save(atualizacao);
      // }
    }catch(e){
      if (e is NoSuchMethodError){
        print(e.stackTrace);
      }
      atualizacao.mensagem = e.toString();
      atualizacao = await atualizacaoDAO.save(atualizacao);
    } 
    return true;
  }

  SequenciaConteudoDAO dao = Database.instance.sequenciaConteudoDAO;
  var controller = CarouselController();
  List<File> files;

  Future downloadConteudos(Atualizacoe atualizacao) async {
    //**Faz o download dos conteudos */
    await conteudoService.download(atualizacao);
    // for (var conteudo in conteudos) {
    //   var tipo = conteudo.idTipoConteudo;
    //   if (tipo == TipoConteudo.IMAGENS.index ||
    //       tipo == TipoConteudo.VIDEO.index) {
    //     await arquivoService.downloadMidia(
    //         conteudo.idArquivo, conteudo.nomeArquivo, (_, __) {});
    //   } else if (tipo == TipoConteudo.COTACAO.index) {}
    // }
  }

  Future downloadTemplates(Atualizacoe atualizacao) async {
    //**Faz o download dos Templates */
    await templateService.download(atualizacao);
    // for (var template in templates) {
    //   await arquivoService.downloadMidia(
    //       template.idArquivo, template.nomeArquivo, (_, __) {});
    // }
  }

  Future downloadNoticias(Atualizacoe atualizacao) async {
    //**Faz o download das Noticias */
    await noticiaService.download( atualizacao );
  }

  Future downloadLoteriaResultado(Atualizacoe atualizacao) async {
    //**Faz o download das Loterias Resultados */
    await loteriaResultadoService.download(atualizacao);
  }

  Future downloadEquipamento(Atualizacoe atualizacao) async {
    //**Faz o download das Noticias */
    await equipamentoService.download( atualizacao );
  }

  Future downloadPrevisaoImagemTempo(Atualizacoe atualizacao) async {
    //**Faz o download das Imagens de Previsão de Tempo */
    var previsaoImgTempo = await previsaoImagemService.download(atualizacao);
    for (var previsaoImagem in previsaoImgTempo) {
      await arquivoService.downloadMidia(
          previsaoImagem.idArquivo, previsaoImagem.nomeArquivo, (_, __) {});
    }
  }

  Future downloadPrevisaoTempo(Atualizacoe atualizacao) async {
    //**Faz o download das Previsões de Tempo */
    await templateService.download( atualizacao );
  }

  Future downloadSequenciaConteudo(Atualizacoe atualizacao) async {
    //**Faz o download da Sequencia de Conteudo e Template */
    List<SequenciaConteudo> sizeTable = await dao.getAllSequence();

    if (sizeTable.length > 0) {
      try {
        await dao.deleteAllSequence();
      } catch (e) {
        print('Erro ao excluir ${e.body}');
      }
    }
    await sequenciaConteudoService.download(atualizacao);
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
