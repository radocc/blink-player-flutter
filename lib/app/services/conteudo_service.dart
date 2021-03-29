import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:moor/moor.dart';

class ConteudoService {
  ConteudoRepository conteudoRepo;

  ConteudoService({@required this.conteudoRepo});

  Future<Conteudo> downloadConteudo() async {
    var conteudo = await this.conteudoRepo.downloadConteudo();
    if (conteudo != null) {
      // Database.instance.conteudoDAO.addValueEquipments(conteudo);
    }
    return conteudo;
  }
}
