import 'dart:convert';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NoticiaRepository extends AbstractRepository {
  final Dio dio;

  NoticiaRepository({@required this.dio}) : super('dados');

  Future<List<Noticia>> downloadNoticia(int identificacao) async {
    try {
      var response = await dio.post(getUrl(''),
          data: {"identificacao": identificacao});

      Map<String, dynamic> data = jsonDecode(response.data);
      List<dynamic> items = data['lista'];
      List<Noticia> noticias = <Noticia>[];
      for (var item in items) {
        noticias.add(Noticia.fromJson(item));
      }
      return noticias;
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
