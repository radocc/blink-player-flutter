import 'package:blink/app/database/database.dart';
import 'package:blink/app/repositories/noticia_repository.dart';
import 'package:flutter/material.dart';

class NoticiaService {
  NoticiaRepository noticiaRepo;

  NoticiaService({@required this.noticiaRepo});

  Future<List<Noticia>> saveNoticias() async {
    var noticia = await this.noticiaRepo.downloadNoticias();
    if (noticia != null) {
      for (var item in noticia) {
        await Database.instance.noticiaDAO.saveValueNotice(item);
      }
      
    }
    return noticia;
  }
}
