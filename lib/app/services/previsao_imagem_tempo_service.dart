import 'dart:io';

import 'package:blink/app/database/dao/previsao_tempo_imagem_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/previsao_tempo_imagem_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/dados_service.dart';

class PrevisaoImagemTempoService extends DadosService<PrevisaoTempoImagem> {
  PrevisaoTempoImagemRepository prevRepo;
  PrevisaoTempoImagemDAO dao = Database.instance.previsaoTempoDAO;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  PrevisaoImagemTempoService(this.prevRepo, this.arquivoService) : super(prevRepo);

  getDAO(){
    return dao;
  }
  
  Future<List<PrevisaoTempoImagem>> finalizar(List<PrevisaoTempoImagem> lista,AtualizacaoStatus status) async {
    for (var previsaoImagem in lista) {
      await arquivoService.downloadMidia(
          previsaoImagem.idArquivo, previsaoImagem.nomeArquivo, (_, __) {});
    }
    return lista;
  }

  // Future<List<PrevisaoTempoImagem>> dowload(int identificacao) async {
  //   var previsaoTempo = await super.download();
  //   if (previsaoTempo != null) {
  //     for (var item in previsaoTempo) {
  //       await conteudoDao.save(item);
  //     }
  //   }
  //   return previsaoTempo;
  // }
}
