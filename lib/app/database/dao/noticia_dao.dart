import 'package:blink/app/database/dao/abstract_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/noticia_entity.dart';
import 'package:moor/moor.dart';

part 'noticia_dao.g.dart';

@UseDao(tables: [Noticias])
class NoticiaDAO extends AbstractDAO<Noticia> with _$NoticiaDAOMixin {
  NoticiaDAO(Database db) : super(db) {
    table = noticias;
  }

  Future<Noticia> getProxima(int idConteudo) async {
    var query = (customSelect("select nc.*   " 
                   + "from   "
                   + "     noticia nc  "
                   + "      left join conteudovisualizado cv on nc.id= cv.id_noticia and nc.id_conteudo = cv.id_conteudo "
                   + " where  "
                   + "     nc.id_conteudo = ?   "
                   + " order by cv.quantidade asc,nc.id asc limit 1  ",
          variables: [Variable.withInt(idConteudo)],
          readsFrom:{noticias}
        ));
      return query.map<Noticia>((row) => Noticia.fromData(row.data, db)).getSingle();
            
  } 
}
