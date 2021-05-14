import 'dart:io';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/models/enuns/tipoconteudo_enum.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';

part 'carousel_controller.g.dart';

@Injectable()
class CarouselController = _CarouselControllerBase with _$CarouselController;

abstract class _CarouselControllerBase with Store {
  
  // Lista de formatos suportados de video
  List<String> extVideo = ['.mp4', '.mkv', '.wmv', '.avi', '.flv'];

  // Lista de formatos suportados de imagem
  List<String> extImg = ['.png', '.jpg', '.jpeg'];
  Future<Directory> dir;
  List<File> files;
  List<ConteudoTemplateModel> filesConteudo;
  ConteudoDAO dao = Database.instance.conteudoDAO;  
  FileSystemEntity file;

  Future<bool> load(dir) async {
    this.dir = dir;
    //
    // Armazenamento de imagem e video que será retornado
    //
    this.files = [];
    this.filesConteudo = [];

    //
    // Lista todos os arquivos e pastas do diretorio passado na classe
    // anterior
    //
    Directory directory = await dir;
    //List<FileSystemEntity> files = directory.listSync();
    this.filesConteudo = await dao.getAllConteudoWithTemplate();

    //
    // DEBUG
    //
    print(directory.path);

    //for (FileSystemEntity file in files) {
    //
    // Verifica se a entidade é um arquivo

    this.filesConteudo.forEach((e) async {
      if (e.conteudo.tipo == TipoConteudo.NOTICIAS.index) {
        
      } else if (e.conteudo.nomeArquivo == null) {
        file = File('${directory.path}/${e.template.nomeArquivo}');
      } else {
        file = File('${directory.path}/${e.conteudo.nomeArquivo}');
      }

      if (file is File) {
        String ext = extension(file.path);
        //
        // Verifica se é uma imagem ou video e adiciona na lista
        //
        if (extVideo.contains(ext) ||
            extImg.contains(ext)) {
          e.file = file;
          this.files.add(file);
        }
      }
    });
    return true;
  }

}
