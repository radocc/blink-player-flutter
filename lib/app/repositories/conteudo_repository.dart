import 'package:blink/app/database/database.dart';
import 'package:blink/app/shared/constrants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ConteudoRepository {
  final Dio dio;

  ConteudoRepository({@required this.dio});

  Future<ConteudoData> downloadConteudo() async {
    var resp = await dio.get(URL_CONTEUDO);
    return ConteudoData.fromJson(resp.data);
  }
}
