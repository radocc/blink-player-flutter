import 'dart:io';

import 'package:blink/app/database/dao/previsao_tempo_imagem_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/previsao_tempo_imagem_repository.dart';
import 'package:blink/app/services/dados_service.dart';

class PrevisaoTempoService extends DadosService<PrevisaoTempoImagem> {
  PrevisaoTempoImagemRepository prevRepo;
  PrevisaoTempoImagemDAO dao = Database.instance.previsaoTempoDAO;
  var controller = CarouselController();
  List<File> files;

  PrevisaoTempoService(this.prevRepo) : super(prevRepo);

  Future<List<PrevisaoTempoImagem>> savePrevisaoTempo(int identificacao) async {
    var previsaoTempo = await super.download();
    if (previsaoTempo != null) {
      for (var item in previsaoTempo) {
        await dao.save(item);
      }
    }
    return previsaoTempo;
  }
}
