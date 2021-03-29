import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ConteudoRepository extends AbstractRepository {
  final Dio dio;

  ConteudoRepository({@required this.dio});

  Future<Conteudo> downloadConteudo() async {
    var resp = await dio.post(getUrl('filtrar/equipamento'));
    return Conteudo.fromJson(resp.data);
  }
}
