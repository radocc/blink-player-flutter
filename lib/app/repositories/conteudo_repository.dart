import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ConteudoRepository extends AbstractRepository {
  // final Dio dio;

  ConteudoRepository() : super('conteudo');

  Future<List<Conteudo>> downloadConteudo() async {
    try {
      var response = await dio.get(getUrl('/filtrar/equipamento'));
      return (response.data as List)
          .map((item) => Conteudo.fromJson(item))
          .toList();
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
