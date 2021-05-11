
import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/conteudo_visualizado_repository.dart';
import 'package:blink/app/services/dados_service.dart';

class ConteudoVisualizadoService extends DadosService<ConteudoVisualizado> {
  ConteudoVisualizadoRepository prevRepo;
  ConteudoVisualizadoDAO dao = Database.instance.conteudoVisualizadoDAO;
  // var controller = CarouselController();
  // List<File> files;

  ConteudoVisualizadoService(this.prevRepo) : super(prevRepo);

  getDAO(){
      return this.dao;
  }

  

}
