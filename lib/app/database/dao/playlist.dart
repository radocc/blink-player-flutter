import 'package:blink/app/database/database.dart';
import 'package:moor/moor.dart';

part 'playlist.g.dart';

@UseDao(tables: [Playlist])
class PlaylistDAO  extends DatabaseAccessor<Database> with _$PlaylistDAOMixin{

  PlaylistDAO(Database db) : super(db);

}