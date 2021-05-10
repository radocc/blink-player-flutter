import 'dart:io';

import 'package:blink/app/database/dao/template_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/template_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:blink/app/services/dados_service.dart';

class TemplateService extends DadosService<Template> {
  TemplateRepository tempRepo;
  TemplateDAO dao = Database.instance.templateDAO;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  TemplateService(this.tempRepo, this.arquivoService) : super(tempRepo);

  getDAO(){
    return dao;
  }

  @override
  Future<List<Template>> finalizar(List<Template> lista, AtualizacaoStatus status) async {
    for (var template in lista) {
      await arquivoService.downloadMidia(
          template.idArquivo, template.nomeArquivo, (_, __) {});
    }
    return lista;
  }

  // Future<List<Template>> download() async {

  //     var templates = await super.download();
  //     if (templates != null) {
  //       for (var item in templates) {
  //         await conteudoDao.save(item);
  //       }
  //     }
  //     return templates;
    
  // }

}
