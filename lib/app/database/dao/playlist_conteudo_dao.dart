import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/playlist_conteudo_entity.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'playlist_conteudo_dao.g.dart';

@UseDao(tables: [PlaylistConteudo])
class PlaylistConteudoDAO  extends DatabaseAccessor<Database> with _$PlaylistConteudoDAOMixin{

  PlaylistConteudoDAO(Database db) : super(db);

}