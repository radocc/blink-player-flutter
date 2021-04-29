import 'dart:io';

import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';

import 'dados_service.dart';

class ConteudoService extends DadosService<Conteudo> {
  ConteudoRepository conteudoRepo;
  ConteudoDAO dao = Database.instance.conteudoDAO;
  var controller = CarouselController();
  List<File> files;

  ConteudoService(this.conteudoRepo) : super(conteudoRepo);

  Future<List<Conteudo>> download() async {
    var conteudos = await super.download();
    if (conteudos != null) {
      for (var item in conteudos) {
        await dao.save(item);
      }
    }
    return conteudos;
  }
}

// Future<List<Conteudo>> downloadConteudo() async {
//   int sizeDirectory = await load();

//   if (sizeDirectory == 0) {
//     var conteudos = await this.conteudoRepo.downloadConteudo();
//     if (conteudos != null) {
//       for (var item in conteudos) {
//         await dao.save(item);
//       }
//     }
//     return conteudos;
//   } else {
//     var conteudo = this.conteudoRepo.downloadConteudo();
//     return conteudo;
//   }
// }

// Future<int> load() async {
//   this.files = [];

//   Directory directory = await getApplicationDocumentsDirectory();
//   List<FileSystemEntity> files = directory.listSync();

//   print(directory.path);

//   for (FileSystemEntity file in files) {
//     if (file is File) {
//       String ext = extension(file.path);
//       // Verifica se é uma imagem ou video e adiciona na lista
//       if (this.controller.extVideo.contains(ext) ||
//           controller.extImg.contains(ext)) {
//         this.files.add(file);
//       }
//     }
//   }
//   print('Qtd. Imagem/video: ' + this.files.length.toString());
//   return this.files.length;
// }
