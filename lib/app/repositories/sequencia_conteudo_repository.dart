
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/dados_repository.dart';

class SequenciaConteudoRepository extends DadosRepository<SequenciaConteudo> {
  // final Dio dio;

  SequenciaConteudoRepository() : super(DadosIdentificacao.SEQUENCIA_CONTEUDO);

}