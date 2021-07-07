import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/abstract_base_repository.dart';
import 'package:dio/dio.dart';

class ArquivoRepository extends AbstractBaseRepository {
  ArquivoRepository() : super('arquivo');

  Future<List<int>> downloadMidia( int idArquivo, Function(int, int) onProgress) async {
    try {
      var response = await dio.get(getUrl('/binario/$idArquivo/zip'),
          options: Options(
            responseType: ResponseType.bytes
          ),
          onReceiveProgress: (progress, total) {
            
            if ((progress % 100) == 0) {
              var p = progress / 1048576;
              print('Progress ${p.toInt()} / $total');
            }
            
          }
        ).catchError((error, stackTrace) => print(stackTrace.toString()));

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
      print(stacktrace);
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  Future<List<int>> downloadNoticia(
      Noticia template, Function(int, int) onProgress) async {
    try {
      var response = await dio.get(getUrl('/binario/${template.idArquivo}'),
          options: Options(
            responseType: ResponseType.bytes
          ),
          onReceiveProgress: onProgress);

      if (response.statusCode == 200 && response.data != []) {
        return response.data;
      }
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  Future<List<int>> downloadTemplate(
      Template template, Function(int, int) onProgress) async {
    try {
      var response = await dio.get(getUrl('/binario/${template.idArquivo}'),
          options: Options(
            responseType: ResponseType.bytes
          ),
          onReceiveProgress: onProgress);

      if (response.statusCode == 200 && response.data != []) {
        return response.data;
      }
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

    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  Future<List<int>> downloadImagemPrevisaoTempo(
      PrevisaoTempoImagem previsaoTempo, Function(int, int) onProgress) async {
    try {
      var response =
          await dio.get(getUrl('/binario/${previsaoTempo.idArquivo}'),
            options: Options(
              responseType: ResponseType.bytes
            ),
            onReceiveProgress: onProgress);

      return response.data;

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

    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
