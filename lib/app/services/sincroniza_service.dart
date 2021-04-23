import 'package:blink/app/models/enuns/tipoconteudo_enum.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/conteudo_service.dart';
import 'package:blink/app/services/noticia_service.dart';
import 'package:blink/app/services/previsao_tempo_service.dart';
import 'package:blink/app/services/template_service.dart';

class SincronizaService {
  ConteudoService conteudoService;
  ArquivoService arquivoService;
  NoticiaService noticiaService;
  TemplateService templateService;
  PrevisaoTempoService previsaoService;

  SincronizaService(this.conteudoService, this.noticiaService,
      this.templateService, this.arquivoService);

  Future iniciar() async {
    await downloadConteudos();
    await downloadTemplates();
  }

  Future downloadConteudos() async {
//**Faz o download dos conteudos */
    var conteudos = await conteudoService.downloadConteudo();
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


}
