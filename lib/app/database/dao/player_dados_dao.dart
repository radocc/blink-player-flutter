import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/entity/player_dados.dart';
import 'package:moor/moor.dart';

part 'player_dados_dao.g.dart';

@UseDao(tables: [PlayerDados])
class PlayerDadosDAO extends AbstractDAO<PlayerDado> with _$PlayerDadosDAOMixin {
  PlayerDadosDAO(Database db) : super(db) {
      table = playerDados;
  }

  Future addValueHardware(PlayerDado entity) {
    return into(playerDados).insert(entity);
  }

  Future save(PlayerDado entity) async {
    if ((entity as dynamic).id == null) {
      var row = await into(playerDados).insertOnConflictUpdate(entity);
      print('RoW-Save Conteudo Visualizado ' + row.toString());
      var ret = (select(playerDados)
            ..where((dynamic tbl) => tbl.id.equals(row)))
          .getSingle();
      return ret;
    } else {
      await update(playerDados).replace(entity);
      var ret = (select(playerDados)
            ..where((dynamic tbl) => tbl.id.equals((entity as dynamic).id)))
          .getSingle();
      return ret;
    }
  }

  Future deletar(PlayerDado pd) async {
    delete(playerDados).go();
  }

  Future<List<PlayerDado>> getParaEnvio() async {
    //var sql = ''' select * from player_dados pd ''';
    var sql = ''' select * from player_dados pd 
              where
                pd.data_cadastro = date('now')-1 
                ''';

    var query = await customSelect(sql, readsFrom: {playerDados});
    return query
        .map<PlayerDado>((row) => PlayerDado.fromData(row.data, db))
        .get();
  }
}
