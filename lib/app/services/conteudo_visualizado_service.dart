
import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/conteudo_visualizado_repository.dart';

class ConteudoVisualizadoService  {
  ConteudoVisualizadoRepository prevRepo;
  ConteudoVisualizadoDAO dao = Database.instance.conteudoVisualizadoDAO;
  
  ConteudoVisualizadoService(this.prevRepo);

  getDAO(){
      return this.dao;
  }

  Future enviarVisualizacoes() async {
    var lista = await dao.getParaEnvio();
    lista = await prevRepo.enviar(lista);
    return true;
  }
  

}
