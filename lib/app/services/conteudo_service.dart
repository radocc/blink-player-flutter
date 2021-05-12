import 'dart:io';

import 'package:blink/app/database/dao/atualizacao_conteudo_dao.dart';
import 'package:blink/app/database/dao/atualizacao_status_dao.dart';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/tipoconteudo_enum.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';

import 'dados_service.dart';

class ConteudoService extends DadosService<Conteudo> {
  ConteudoRepository conteudoRepo;
  ConteudoDAO conteudoDao = Database.instance.conteudoDAO;
  AtualizacaoConteudoDAO atctDAO = Database.instance.atualizacaoConteudoDAO;
  AtualizacaoStatusDAO statusDAO = Database.instance.atualizacaoStatusDAO;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  ConteudoService(this.conteudoRepo,this.arquivoService) : super(conteudoRepo);

  getDAO(){
      return this.conteudoDao;
  }
  
  @override
  Future<List<Conteudo>> finalizar(List<Conteudo> conteudos, AtualizacaoStatus status) async {
    for (var conteudo in conteudos) {
      var tipo = conteudo.tipo;
      if (tipo == TipoConteudo.IMAGENS.index ||
          tipo == TipoConteudo.VIDEO.index) {
        await arquivoService.downloadMidia(
            conteudo.idArquivo, conteudo.nomeArquivo, (_, __) {});
      } 
    }
    return conteudos;
  }
}
 