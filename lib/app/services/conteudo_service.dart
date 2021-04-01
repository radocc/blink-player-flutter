import 'dart:io';

import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/arquivo_repository.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class ConteudoService {
  ConteudoRepository conteudoRepo;
  ArquivoRepository arquivoRepo;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  ConteudoService(
      {@required this.conteudoRepo,
      @required this.arquivoRepo,
      @required this.arquivoService});

  Future<List<Conteudo>> downloadConteudo() async {
    var conteudo = await this.conteudoRepo.downloadConteudo();
    if (conteudo != null) {
      for (var item in conteudo) {
        await Database.instance.conteudoDAO.addValueEquipments(item);
      }
      //Database.instance.conteudoDAO.addValueEquipments(conteudo);
      await this.downloadMidias(conteudo);
    }
    return conteudo;
  }

  Future downloadMidias(List<Conteudo> lista) async {
    if (lista != null && lista.isNotEmpty) {
      List<int> arquivo;
      List<Future> futures = [];
      for (var conteudo in lista) {
        print('VAI BAIXAR ARQUIVO ${conteudo.idArquivo}');
        arquivo = await arquivoRepo.downloadMidia(conteudo, (received, total) {
          //print('DOWNLOAD $received - $total');
        });
        futures.add(arquivoService.salvarArquivo(
            arquivo, conteudo.idArquivo, conteudo.nomeArquivo));
        print('Baixou arquivo ${conteudo.idArquivo}');
      }
      await Future.wait(futures).then((_) {
        print('TERMINOU TODOS');
      });
    }
  }

  Future<int> load() async {
    this.files = [];

    Directory directory = await getApplicationDocumentsDirectory();
    List<FileSystemEntity> files = directory.listSync();

    print(directory.path);

    for (FileSystemEntity file in files) {
      if (file is File) {
        String ext = extension(file.path);
        //
        // Verifica se é uma imagem ou video e adiciona na lista
        //
        if (this.controller.extVideo.contains(ext) ||
            controller.extImg.contains(ext)) {
          this.files.add(file);
        }
      }
    }
    print('Tamanho: ' + this.files.length.toString());
    return this.files.length;
  }
}
