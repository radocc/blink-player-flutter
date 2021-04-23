import 'package:blink/app/database/entity/previsao_tempo_entity.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/dados_repository.dart';

class PrevisaoTempoRepository extends DadosRepository<PrevisaoTempos> {
  // final Dio dio;

  PrevisaoTempoRepository() : super(DadosIdentificacao.PREVISAO_TEMPO);

}
