import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/enuns/dados_dentificacao_enum.dart';

import 'dados_repository.dart';

class ConteudoRepository extends DadosRepository<Conteudo> {
  // final Dio dio;

  ConteudoRepository() : super(DadosIdentificacao.CONTEUDO);
}

// Future<List<Conteudo>> downloadConteudo() async {
//   try {
//     var response = await dio.get(getUrl('/filtrar/equipamento'));
//     return (response.data as List)
//         .map((item) => Conteudo.fromJson(item))
//         .toList();
//   } catch (error, stacktrace) {
//     throw Exception("Exception occured: $error stackTrace: $stacktrace");
//   }
// }
