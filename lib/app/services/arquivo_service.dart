import 'dart:io';
import 'dart:isolate';

import 'package:archive/archive_io.dart';
import 'package:path_provider/path_provider.dart';

class ArquivoService {
  Directory _dir;

  Future salvarArquivo(List<int> arquivo, int idArquivo, String nome) async {
    _dir = await getApplicationDocumentsDirectory();
    // Abre a porta para receber a porta de comunicação dentro do Isolate
    ReceivePort receiveIsolatePort = ReceivePort();
    // Cria o Isolate com o metodo e a porta criada anteriormente
    var isolate = await Isolate.spawn(dataLoader, receiveIsolatePort.sendPort);

    // Guarda a porta enviada pelo Isolate
    SendPort sendToIsolatePort = await receiveIsolatePort.first;

    // Envia a requisição com o link para o Isolate baixar o json
    bool msg = await sendReceive(
        sendToIsolatePort, arquivo, idArquivo, nome, _dir.path);

    // mata o isolate após o download
    isolate.kill(priority: Isolate.immediate);
  }

  static dataLoader(SendPort sendPort) async {
    // Abre a porta para receber as requisições
    ReceivePort port = ReceivePort();

    // Envia para a main thread a porta
    sendPort.send(port.sendPort);

    // Espera receber a requisição
    await for (var msg in port) {
      // Porta para retornar
      SendPort replyTo = msg[0];

      List<int> arquivo = msg[1];
      int idArquivo = msg[2];
      String nome = msg[3];
      String path = msg[4];

      print('VAI DESCOMPACTAR ARQUIVO ${idArquivo}');


      var gzip = GZipDecoder().decodeBytes(arquivo);
      print('ARQUIVO DESCOMPACTADO ${idArquivo}');
      var file = File('${path}/${nome}');
      //await file.writeAsBytes(arquivo);
      await file.writeAsBytes(gzip);
      print('ARQUIVO GRAVADO ${idArquivo}');
      // Envia a resposta do http
      replyTo.send(true);
    }
  }

  Future sendReceive(SendPort port, List<int> arquivo, int idArquivo,
      String nome, String path) {
    // Abre uma porta para receber a resposta da requisição
    ReceivePort response = ReceivePort();
    // Envia para o Isolate o link e a porta de resposta
    port.send([response.sendPort, arquivo, idArquivo, nome, path]);
    return response.first;
  }
}
