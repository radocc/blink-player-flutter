
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/dados_repository.dart';

class LoteriaResultadoRepository extends DadosRepository<LoteriaResultado> {
  // final Dio dio;

  LoteriaResultadoRepository() : super(DadosIdentificacao.LOTERIA);

}
