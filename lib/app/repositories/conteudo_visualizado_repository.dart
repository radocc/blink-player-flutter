import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';

import 'dados_repository.dart';

class ConteudoVisualizadoRepository extends DadosRepository<Conteudo> {
  // final Dio dio;

  ConteudoVisualizadoRepository() : super(DadosIdentificacao.CONTEUDO_VISUALIZADO);
}

 
