import 'dart:io';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/models/enuns/tipoconteudo_enum.dart';
import 'package:blink/app/pages/slide_default/slide_default_page.dart';
import 'package:blink/app/pages/slide_image/slide_image_page.dart';
import 'package:blink/app/pages/slide_loteria/slide_loteria_page.dart';
import 'package:blink/app/pages/slide_noticia/slide_noticia_page.dart';
import 'package:blink/app/pages/slide_previsao_tempo/slide_previsao_tempo.dart';
import 'package:blink/app/pages/slide_video/slide_video_page.dart';
import 'package:blink/app/shared/events.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'carousel_controller.g.dart';

@Injectable()
class CarouselController = _CarouselControllerBase with _$CarouselController;

abstract class _CarouselControllerBase with Store {
  @observable
  var conteudos = ObservableList<ConteudoTemplateModel>();
  @action 
  adicionarConteudos(List<ConteudoTemplateModel> conteudos){
      this.conteudos.clear();
      this.conteudos.addAll(conteudos);
  }
  // Lista de formatos suportados de video
  List<String> extVideo = ['.mp4', '.mkv', '.wmv', '.avi', '.flv'];

  // Lista de formatos suportados de imagem
  List<String> extImg = ['.png', '.jpg', '.jpeg'];
  Future<Directory> dir;
  List<File> files;
  List<ConteudoTemplateModel> filesConteudo;
  ConteudoDAO dao = Database.instance.conteudoDAO;  
  FileSystemEntity file;
  PageController pageController = PageController();
  
  onInit(){
    ouvirNovasAtualizacoes();
  }

  void ouvirNovasAtualizacoes(){
    Events.atualizacaoConteudoCtrl.stream.listen((event) { 
      this.load(dir);
      print('Carregado novamente os Conteudos');
    });
  }

  Future<bool> load(dir) async {
    this.dir = dir;
    //
    // Armazenamento de imagem e video que será retornado
    //
    this.filesConteudo = [];

    this.filesConteudo = await dao.getAllConteudoWithTemplate(); 
    adicionarConteudos(filesConteudo);

    if (this.filesConteudo.isEmpty) {
      return false; 
    } else {

    return true;
    }
  }

  void nextPage() {
    //
    // Ultima pagina, volta o slide para primeira pagina
    //
    if (pageController.page == filesConteudo.length - 1) {
      //_controller.jumpTo(0);
      pageController.jumpToPage(0);
    }
    //
    // Avança para o proximo slide
    //
    else {
      pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    }
  }

  //
  // Verifica se é um slide de imagem ou de video
  //
  Widget getItem(ConteudoTemplateModel conteudoTemplate) {
    //String ext = extension(conteudoTemplate.file.path);
    // visualizadoDAO.registrarVisualizacao(conteudoTemplate.conteudo.id, null);

    var tipo = conteudoTemplate.conteudo.tipo;
    if (tipo == TipoConteudo.VIDEO.index) {
      return SlideVideoPage(conteudoTemplate, next: nextPage, dir:dir);
    } else if (tipo == TipoConteudo.IMAGENS.index) {
      return SlideImagePage(conteudoTemplate, next: nextPage, dir: dir);
    } else if (conteudoTemplate.conteudo.tipo == TipoConteudo.PADRAO.index) {
      return SlideDefaultPage(conteudoTemplate, next: nextPage, dir: dir);
    } else if (conteudoTemplate.conteudo.tipo == TipoConteudo.NOTICIAS.index) {
      return SlideNoticiaPage(conteudoTemplate, next: nextPage, dir: dir);
    } else if (conteudoTemplate.conteudo.tipo == TipoConteudo.LOTERIAS.index) {
      return SlideLoteriaPage(conteudoTemplate, next: nextPage, dir: dir);
    } else if (tipo == TipoConteudo.PREVISAOTEMPO.index) {
      return SlidePrevisaoTempoPage(conteudoTemplate, next: nextPage);
    }
    return Container();
  }


}
