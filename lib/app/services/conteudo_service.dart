import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:moor/moor.dart';

class ConteudoService {
  ConteudoRepository conteudoRepo;

  ConteudoService({@required this.conteudoRepo});

  Future<List<Conteudo>> downloadConteudo() async {
    var conteudo = await this.conteudoRepo.downloadConteudo();
    if (conteudo != null) {
      conteudo.forEach((item) {
        Database.instance.conteudoDAO.addValueEquipments(item);
      });
      //Database.instance.conteudoDAO.addValueEquipments(conteudo);
    }
    return conteudo;
  }

  Future<Conteudo> getAllConteudos() {
    var conteudo = Conteudos();
    print(conteudo);
  }
}
