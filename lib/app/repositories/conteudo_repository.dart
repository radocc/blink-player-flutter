import 'package:blink/app/shared/constrants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ConteudoRepository {
  final Dio dio;

  ConteudoRepository({@required this.dio});

//  Esperar anderson colocar a rota na outra maquina...Ajustada na dele já
//  Ai crio a classe corretamente...

//   Future<Conteudo> downloadConteudo(String uuid) async {
//     var resp = await dio
//         .post(URL_CONTEUDO, data: {"uuid": uuid});
//     return Conteudo.fromJson(resp.data);
//   }
}
