import 'dart:io';

import 'package:blink/app/repositories/abstract_base_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class ArquivoRepository extends AbstractBaseRepository {
  final Dio dio;

  ArquivoRepository({@required this.dio}) : super('arquivo');

  //mandar idconteudo
  Future<File> downloadMidia(String idConteudo) async {
    try {
      var _dir = await getApplicationDocumentsDirectory();
      var response = await dio.get(getUrl('/binario/$idConteudo'));
      var file = File('$_dir');
      file.writeAsBytes(response.data);
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
