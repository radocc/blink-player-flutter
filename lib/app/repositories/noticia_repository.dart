
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/dados_repository.dart';

class NoticiaRepository extends DadosRepository<Noticia> {
  // final Dio dio;

  NoticiaRepository() : super(DadosIdentificacao.NOTICIA);

}
