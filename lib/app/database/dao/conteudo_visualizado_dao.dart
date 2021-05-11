import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_visualizado_entity.dart';
import 'package:intl/intl.dart';
import 'package:moor/moor.dart';

part 'conteudo_visualizado_dao.g.dart';

@UseDao(tables: [ConteudosVisualizados])
class ConteudoVisualizadoDAO extends AbstractDAO<ConteudoVisualizado> with _$ConteudoVisualizadoDAOMixin {
  
  ConteudoVisualizadoDAO(Database db) : super(db){
    table = conteudosVisualizados;
  }

  // Future<int> getUltimo(int identificacao) async {
  //   var result = await customSelect("Select * from ConteudoVisualizado ",
  //     variables: [Variable.withInt(1)]
  //   );
  //   return result.get();    
  // } 

  Future<ConteudoVisualizado> registrarVisualizacao(int idConteudo,int idNoticia) async {
    var conteudoVisualizado = null as ConteudoVisualizado;
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
      conteudoVisualizado.horas = '';//conteudoVisualizado.horas+","+DateFormat.Hms().format(DateTime.now());
    }
    conteudoVisualizado.idConteudo = idConteudo;
    conteudoVisualizado.idNoticia = idNoticia;
    // conteudoVisualizado.idPlayer = ;
    conteudoVisualizado = await save(conteudoVisualizado) ;
    return conteudoVisualizado;
  }
  
}