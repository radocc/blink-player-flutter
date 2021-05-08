import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/atualizacao_entity.dart';
import 'package:moor/moor.dart';

part 'atualizacao_dao.g.dart';

@UseDao(tables: [Atualizacoes])
class AtualizacaoDAO extends AbstractDAO<Atualizacoe> with _$AtualizacaoDAOMixin {
  
  AtualizacaoDAO(Database db) : super(db){
    table = atualizacoes;
  }

  
}