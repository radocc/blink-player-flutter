import 'dart:io';

import 'package:blink/app/database/dao/atualizacao_conteudo_dao.dart';
import 'package:blink/app/database/dao/atualizacao_status_dao.dart';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/atualizacao_entity.dart';
import 'package:blink/app/models/dados_model.dart';
import 'package:blink/app/models/enuns/tipoconteudo_enum.dart';
import 'package:blink/app/modules/carousel/carousel_controller.dart';
import 'package:blink/app/repositories/conteudo_repository.dart';
import 'package:blink/app/services/arquivo_service.dart';

import 'dados_service.dart';

class ConteudoService extends DadosService<Conteudo> {
  ConteudoRepository conteudoRepo;
  ConteudoDAO conteudoDao = Database.instance.conteudoDAO;
  AtualizacaoConteudoDAO atctDAO = Database.instance.atualizacaoConteudoDAO;
  AtualizacaoStatusDAO statusDAO = Database.instance.atualizacaoStatusDAO;
  ArquivoService arquivoService;
  var controller = CarouselController();
  List<File> files;

  ConteudoService(this.conteudoRepo,this.arquivoService) : super(conteudoRepo);

  getDAO(){
      return this.conteudoDao;
  }

  // Future<List<Conteudo>> download(Atualizacoe atualizacao) async {
  //   AtualizacaoStatus status = AtualizacaoStatus(idAtualizacao: atualizacao.id,dataInicial: DateTime.now());
    
  //   var conteudos = await super.download(atualizacao);
  //   status.dataDownload = DateTime.now();
  //   if (conteudos != null) {
  //     for (var item in conteudos) {
  //       item = await conteudoDao.save(item);
  //       // var atCt = new AtualizacaoConteudo(id: null, idAtualizacao: null, tipoObjeto: null, idObjeto: null, data: null)
  //     }
  //   }
  //   status.dataProcessado = DateTime.now();
  //   status.dataFinal = DateTime.now();
    
  //   return conteudos;
  // }

  @override
  Future<List<Conteudo>> finalizar(List<Conteudo> conteudos, AtualizacaoStatus status) async {
    for (var conteudo in conteudos) {
      var tipo = conteudo.idTipoConteudo;
      if (tipo == TipoConteudo.IMAGENS.index ||
          tipo == TipoConteudo.VIDEO.index) {
        await arquivoService.downloadMidia(
            conteudo.idArquivo, conteudo.nomeArquivo, (_, __) {});
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
