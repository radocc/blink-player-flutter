import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_agendamento_entity.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'conteudo_agenda_dao.g.dart';

@UseDao(tables: [ConteudoAgendamento])
class ConteudoAgendaDAO  extends DatabaseAccessor<Database> with _$ConteudoAgendaDAOMixin{

  ConteudoAgendaDAO(Database db) : super(db);

  //Future<List<ConteudoAgendamentoData>> getAllConteudo() => select(conteudoAgendamento).get();

}