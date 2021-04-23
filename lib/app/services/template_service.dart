import 'dart:io';

import 'package:blink/app/database/dao/template_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/template_repository.dart';
import 'package:blink/app/services/dados_service.dart';

class TemplateService extends DadosService<Template> {
  TemplateRepository tempRepo;
  TemplateDAO dao = Database.instance.templateDAO;
  var controller = CarouselController();
  List<File> files;

  TemplateService(this.tempRepo) : super(tempRepo);

  Future<List<Template>> download() async {

      var templates = await super.download();
      if (templates != null) {
        for (var item in templates) {
          await dao.save(item);
        }
      }
      return templates;
    
  }

}
