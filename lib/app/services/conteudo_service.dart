import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:moor/moor.dart';

class ConteudoService {
  ConteudoRepository conteudoRepo;

  ConteudoService({@required this.conteudoRepo});

  // Future<Conteudo> logar(String uuid) async {
  //   var conteudo = await this.conteudoRepo.downloadConteudo(uuid);
  //   if (conteudo != null) {
  //     Database.instance.conteudoDAO.addValueEquipments(conteudo);
  //     var prefs = await SharedPreferences.getInstance();
  //     await prefs.setString('uuid', equip.uuid);
  //   }
  //   return equip;
  // }
}
