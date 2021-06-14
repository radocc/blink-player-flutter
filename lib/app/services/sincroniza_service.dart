
import 'package:blink/app/database/dao/atualizacao_dao.dart';
import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/conteudo_visualizado_service.dart';
import 'package:blink/app/services/equipamento_service.dart';
import 'package:blink/app/services/loteria_resultado_service.dart';
import 'package:blink/app/services/noticia_service.dart';
import 'package:blink/app/services/player_dados_service.dart';
import 'package:blink/app/services/previsao_imagem_tempo_service.dart';
import 'package:blink/app/services/previsao_tempo_service.dart';
import 'package:blink/app/services/progress_service.dart';
import 'package:blink/app/services/sequencia_conteudo_service.dart';
import 'package:blink/app/services/template_service.dart';
import 'package:blink/app/shared/events.dart';

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
  ConteudoVisualizadoService conteudoVisualizadoService;
  PlayerDadosService playerDadosService;
  AtualizacaoDAO atualizacaoDAO = Database.instance.atualizacaoDAO;
  ProgressService progressService;

  SincronizaService(
      this.conteudoService,
      this.noticiaService,
      this.templateService,
      this.arquivoService,
      this.previsaoImagemService,
      this.previsaoTempoService,
      this.sequenciaConteudoService,
      this.loteriaResultadoService,
      this.equipamentoService,
      this.conteudoVisualizadoService,
      this.playerDadosService,
      this.progressService);

  Future iniciar() async {
    // ignore: missing_required_param
    Atualizacoe atualizacao = Atualizacoe();
    atualizacao.inicio = DateTime.now();
    atualizacao = await atualizacaoDAO.save(atualizacao);

    try {
      // if (kReleaseMode) {
      await this.conteudoVisualizadoService.enviarVisualizacoes();
      progressService.progress.value = 10;
      await this.playerDadosService.enviarDadosPlayer();
      progressService.progress.value += 10 ;
      await downloadConteudos(atualizacao);
      progressService.progress.value += 10;
      await downloadTemplates(atualizacao);
      progressService.progress.value += 10;
      await downloadPrevisaoImagemTempo(atualizacao);
      progressService.progress.value += 10;
      await downloadSequenciaConteudo(atualizacao);
      progressService.progress.value += 10;
      await downloadNoticias(atualizacao);
      progressService.progress.value += 10;
      await downloadLoteriaResultado(atualizacao);
      progressService.progress.value += 10;
      await downloadEquipamento(atualizacao);
      progressService.progress.value += 10;
      atualizacao.fim = DateTime.now();
      atualizacao = await atualizacaoDAO.save(atualizacao);
      progressService.progress.value += 10;
      Events.atualizacaoConteudoCtrl.sink.add(true);
      // }
    } catch (e) {
      if (e is NoSuchMethodError) {
        print(e.stackTrace);
      }
      atualizacao.mensagem = e.toString();
      atualizacao = await atualizacaoDAO.save(atualizacao);
    }

    return true;
  }

  Future downloadConteudos(Atualizacoe atualizacao) async {
    //**Faz o download dos conteudos */
    await conteudoService.download(atualizacao);
  }

  Future downloadTemplates(Atualizacoe atualizacao) async {
    //**Faz o download dos Templates */
    await templateService.download(atualizacao);
  }

  Future downloadNoticias(Atualizacoe atualizacao) async {
    //**Faz o download das Noticias */
    await noticiaService.download(atualizacao);
  }

  Future downloadLoteriaResultado(Atualizacoe atualizacao) async {
    //**Faz o download das Loterias Resultados */
    await loteriaResultadoService.download(atualizacao);
  }

  Future downloadEquipamento(Atualizacoe atualizacao) async {
    //**Faz o download do Equipamento */
    await equipamentoService.download(atualizacao);
  }

  Future downloadPrevisaoImagemTempo(Atualizacoe atualizacao) async {
    //**Faz o download das Imagens de Previsão de Tempo */
    await previsaoImagemService.download(atualizacao);
  }

  Future downloadPrevisaoTempo(Atualizacoe atualizacao) async {
    //**Faz o download das Previsões de Tempo */
    await previsaoTempoService.download(atualizacao);
  }

  Future downloadSequenciaConteudo(Atualizacoe atualizacao) async {
    //**Faz o download da Sequencia de Conteudo e Template */
    SequenciaConteudoDAO dao = Database.instance.sequenciaConteudoDAO;
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
}
