
import 'package:blink/app/database/dao/equipamento_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/equipamento_repository.dart';

import 'dados_service.dart';

class EquipamentoService extends DadosService<Equipamento> {
  EquipamentoRepository equipamentoRepo;
  EquipamentoDAO equipamentoDao = Database.instance.equipamentoDAO;
  

  EquipamentoService(this.equipamentoRepo) : super(equipamentoRepo);

  getDAO(){
      return this.equipamentoDao;
  }
  
}
