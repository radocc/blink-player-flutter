import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NoticiaRepository extends AbstractRepository{

  final Dio dio;

  NoticiaRepository({@required this.dio}) : super('noticia');

  Future<List<Noticia>> downloadNoticias() async {
    try {
      var response = await dio.get(getUrl('/filtrar/conteudos'));
      return (response.data as List)
          .map((item) => Noticia.fromJson(item))
          .toList();
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

}