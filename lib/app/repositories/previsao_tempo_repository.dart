import 'dart:convert';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PrevisaoTempoRepository extends AbstractRepository {
  final Dio dio;

  PrevisaoTempoRepository({@required this.dio}) : super('dados');

  Future<List<PrevisaoImagemTempo>> downloadPrevisaoTempo(int identificacao) async {
    try {
      var response = await dio.post(getUrl(''),
          data: {"identificacao": identificacao});

      Map<String, dynamic> data = jsonDecode(response.data);
      List<dynamic> items = data['lista'];
      List<PrevisaoImagemTempo> previsaoTempo = <PrevisaoImagemTempo>[];
      for (var item in items) {
        previsaoTempo.add(PrevisaoImagemTempo.fromJson(item));
      }
      return previsaoTempo;
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
