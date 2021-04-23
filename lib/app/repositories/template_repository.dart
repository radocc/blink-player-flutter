
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';
import 'package:blink/app/repositories/dados_repository.dart';

class TemplateRepository extends DadosRepository<Template> {
  // final Dio dio;

  TemplateRepository() : super(DadosIdentificacao.TEMPLATE);

}
