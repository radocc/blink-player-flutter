import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/player_dados.dart';
import 'package:moor/moor.dart';

part 'player_dados_dao.g.dart';

@UseDao(tables: [PlayerDados])
class PlayerDadosDAO  extends DatabaseAccessor<Database> with _$PlayerDadosDAOMixin{

  PlayerDadosDAO(Database db) : super(db);

    Future addValueHardware(PlayerDado entity) {
    return into(playerDados).insert(entity);
  }

  //Future<List<ConteudoData>> getAllConteudo() => select(conteudo).get();

}