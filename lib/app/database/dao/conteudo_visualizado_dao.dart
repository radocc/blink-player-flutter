import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/dao/equipamento_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_visualizado_entity.dart';
import 'package:intl/intl.dart';
import 'package:moor/moor.dart';

part 'conteudo_visualizado_dao.g.dart';

@UseDao(tables: [ConteudosVisualizados])
class ConteudoVisualizadoDAO extends AbstractDAO<ConteudoVisualizado> with _$ConteudoVisualizadoDAOMixin {
  
  Equipamento equipamento;
  EquipamentoDAO equipamentoDAO;

  ConteudoVisualizadoDAO(Database db, this.equipamentoDAO) : super(db){
    table = conteudosVisualizados;
  }

  Future save(ConteudoVisualizado entity)async {
    if ((entity as dynamic).id == null){
      var row = await into(conteudosVisualizados).insertOnConflictUpdate(entity);
      print('RoW-Save Conteudo Visualizado ' + row.toString());
      var ret = (select(conteudosVisualizados)..where((dynamic tbl) => tbl.id.equals(row))).getSingle();
      return ret;
    }else {
      await update(conteudosVisualizados).replace(entity);
      var ret = (select(conteudosVisualizados)..where((dynamic tbl) => tbl.id.equals((entity as dynamic).id))).getSingle();
      return ret;
    }
  }

  Future deletar(ConteudoVisualizado cv) async{
     delete(conteudosVisualizados).where((tbl) => tbl.id.equals(cv.idApp));
  }

  Future<List<ConteudoVisualizado>> getParaEnvio() async {
    var sql = ''' select * from conteudovisualizado cv 
              where
                cv.id_app is null
                and cv.data_execucao = date('now')-1 
                ''';
                
    var query = await customSelect(sql,readsFrom: {conteudosVisualizados});
    return query.map<ConteudoVisualizado>((row) => ConteudoVisualizado.fromData(row.data, db)).get();
  } 

  Future<ConteudoVisualizado> registrarVisualizacao(int idConteudo,int idNoticia) async {
    var conteudoVisualizado;
    if (idNoticia == null){
      conteudoVisualizado = await (select(conteudosVisualizados)..where((tbl) => tbl.idConteudo.equals(idConteudo)
        & tbl.idNoticia.equals(idNoticia) )..limit(1)).getSingle();
    }else {
      conteudoVisualizado = await (select(conteudosVisualizados)..where((tbl) => tbl.idConteudo.equals(idConteudo))..limit(1)).getSingle();
    }
    if (conteudoVisualizado == null){
      conteudoVisualizado = ConteudoVisualizado();
      conteudoVisualizado.quantidade = 1;
      conteudoVisualizado.horas = DateFormat.Hms().format(DateTime.now());
    }else {
      conteudoVisualizado.quantidade = conteudoVisualizado.quantidade + 1;
      conteudoVisualizado.horas = conteudoVisualizado.horas+","+DateFormat.Hms().format(DateTime.now());
    }
    conteudoVisualizado.idConteudo = idConteudo;
    conteudoVisualizado.idNoticia = idNoticia;
    if (equipamento == null){
      equipamento = await equipamentoDAO.getEquipamento();
    }
    conteudoVisualizado.idPlayer = equipamento.idPlayer;
    conteudoVisualizado.dataAlteracao = DateTime.now();
    conteudoVisualizado.dataExecucao = DateTime.now();
    
    conteudoVisualizado = await save(conteudoVisualizado) ;
    return conteudoVisualizado;
  }
  
}