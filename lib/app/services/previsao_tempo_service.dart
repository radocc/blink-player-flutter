import 'dart:io';

import 'package:blink/app/database/dao/previsao_tempo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/previsao_tempo_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/dados_service.dart';

class PrevisaoTempoService extends DadosService<PrevisaoTempo> {
  PrevisaoTempoRepository prevRepo;
  PrevisaoTemposDAO dao = Database.instance.previsaoTemposDAO;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  PrevisaoTempoService(this.prevRepo, this.arquivoService) : super(prevRepo);

  getDAO(){
    return dao;
  }

  // Future<List<PrevisaoTempo>> download() async {
  //   var previsaoTempos = await super.download();
  //   if (previsaoTempos != null) {
  //     for (var item in previsaoTempos) {
  //       await conteudoDao.save(item);
  //     }
  //   }
  //   return previsaoTempos;
  // }

 
}
