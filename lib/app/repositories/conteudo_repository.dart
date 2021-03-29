import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ConteudoRepository extends AbstractRepository {
  final Dio dio;

  ConteudoRepository({@required this.dio});

//  Esperar anderson colocar a rota na outra maquina...Ajustada na dele já
//  Ai crio a classe corretamente...

  Future<Conteudo> downloadConteudo() async {
    var resp = await dio.post(getUrl('filtrar/equipamento'));
    return Conteudo.fromJson(resp.data);
  }
}
