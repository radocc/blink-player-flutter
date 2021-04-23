
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/dados_repository.dart';

class PrevisaoTempoImagemRepository extends DadosRepository<PrevisaoTempoImagem> {

  PrevisaoTempoImagemRepository() : super(DadosIdentificacao.PREVISAO_IMAGEM_TEMPO);

}
