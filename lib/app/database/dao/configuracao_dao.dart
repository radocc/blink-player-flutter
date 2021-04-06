import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/configuracao_entity.dart';
import 'package:moor/moor.dart';

part 'configuracao_dao.g.dart';

@UseDao(tables: [Configuracoes])
class ConfiguracaoDAO extends DatabaseAccessor<Database> with _$ConfiguracaoDAOMixin {
  ConfiguracaoDAO(Database db) : super(db);

  
}