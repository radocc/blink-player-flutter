import 'dart:convert';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TemplateRepository extends AbstractRepository {
  final Dio dio;

  TemplateRepository({@required this.dio}) : super('dados');

  Future<List<Template>> downloadTemplate(int identificacao) async {
    try {
      var response = await dio.post(getUrl(''),
          data: {"identificacao": identificacao});

      Map<String, dynamic> data = jsonDecode(response.data);
      List<dynamic> items = data['lista'];
      List<Template> template = <Template>[];
      for (var item in items) {
        template.add(Template.fromJson(item));
      }
      return template;
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
