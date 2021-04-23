import 'dart:io';
import 'package:blink/app/database/dao/loteria_resultado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/loteria_resultado_repository.dart';
import 'package:blink/app/services/dados_service.dart';

class LoteriaResultadoService extends DadosService<LoteriaResultado> {
  LoteriaResultadoRepository prevRepo;
  LoteriaResultadosDAO dao = Database.instance.loteriaResultadosDAO;
  var controller = CarouselController();
  List<File> files;

  LoteriaResultadoService(this.prevRepo) : super(prevRepo);

  Future<List<LoteriaResultado>> savePrevisaoTempo(int identificacao) async {
    var previsaoTempo = await super.download();
    if (previsaoTempo != null) {
      for (var item in previsaoTempo) {
        await dao.save(item);
      }
    }
    return previsaoTempo;
  }
}
