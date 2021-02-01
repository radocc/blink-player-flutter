import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/playlist_entity.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'playlist.g.dart';

@UseDao(tables: [Playlist])
class PlaylistDAO  extends DatabaseAccessor<Database> with _$PlaylistDAOMixin{

  PlaylistDAO(Database db) : super(db);

}