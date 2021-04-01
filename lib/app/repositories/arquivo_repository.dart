import 'dart:io';
import 'dart:isolate';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_base_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:archive/archive.dart';
import 'package:path_provider/path_provider.dart';

class ArquivoRepository extends AbstractBaseRepository {
  final Dio dio;

  ArquivoRepository({@required this.dio}) : super('arquivo');

  Future<List<int>> downloadMidia(Conteudo conteudo, Function(int, int) onProgress) async {
    try {
      
      var response = await dio.get(getUrl('/binario/${conteudo.idArquivo}'),
          options: RequestOptions(
            responseType: ResponseType.bytes,
            onReceiveProgress: onProgress,
          ));
      //var file = File('$_dir/$idArquivo');
      //return file.writeAsBytes(response.bodyBytes);
      // var response = await dio.download(
      //     getUrl('/binario/$idArquivo'), _dir.path + '/teste/teste.gzip',
      //     onReceiveProgress: (received, total) {
      //   if (total != -1) {
      //     print((received / total * 100).toStringAsFixed(0) + "%");
      //   }
      // });
      //
      //
      // salvarArquivo(response.data, conteudo);
      return response.data;
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
