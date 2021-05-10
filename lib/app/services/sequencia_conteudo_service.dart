import 'dart:io';

import 'package:blink/app/database/dao/sequencia_conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/sequencia_conteudo_repository.dart';
import 'package:blink/app/services/dados_service.dart';

class SequenciaConteudoService extends DadosService<SequenciaConteudo> {
  SequenciaConteudoRepository seqRepo;
  SequenciaConteudoDAO dao = Database.instance.sequenciaConteudoDAO;
  var controller = CarouselController();
  List<File> files;

  SequenciaConteudoService(this.seqRepo) : super(seqRepo);

  getDAO(){
    return dao;
  }

  // Future<List<SequenciaConteudo>> download() async {

  //     var templates = await super.download();
  //     if (templates != null) {
  //       for (var item in templates) {
  //         await conteudoDao.save(item);
  //       }
  //     }
  //     return templates;
    
  // }

}
