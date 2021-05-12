import 'dart:convert';

import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/dao/noticia_dao.dart';
import 'package:blink/app/database/dao/template_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_campos.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/pages/slide_noticia/slide_noticia_controller.dart';
import 'package:blink/app/shared/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

//
// Tempo para passar o slide do carousel
//
const nextDuration = Duration(seconds: 10);

class SlideNoticiaPage extends StatefulWidget {
  final Function next;
  final ConteudoTemplateModel conteudoModel;
  //final File url;
  const SlideNoticiaPage(this.conteudoModel, {@required this.next});

  @override
  _SlideNoticiaPageState createState() => _SlideNoticiaPageState();
}

class _SlideNoticiaPageState
    extends ModularState<SlideNoticiaPage, SlideNoticiaController> {
  //int currentIndex = 0;
  Noticia noticia;
  NoticiaDAO noticiaDAO;
  Template template;
  TemplateDAO templateDAO;
  ConteudoVisualizadoDAO visualizadoDAO;


  @override
  void initState() {
    super.initState();
    noticiaDAO = Database.instance.noticiaDAO;
    templateDAO = Database.instance.templateDAO;
    visualizadoDAO = Database.instance.conteudoVisualizadoDAO;
    Future.delayed(nextDuration, () {
      //
      // Proximo slide
      //
      if (this.mounted) {
        widget.next();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    // Define os widget que serão exibido no slide de imagem
    //

    ScreenSize controller = ScreenSize();

    //WUXGA - 1920X1200 -- Ok
    if (controller.isDesktopXl(context: context)) {
      //cover
      return Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return FutureBuilder<Widget>(
              //currentIndex
              future: getLayout(constraints.maxWidth, constraints.maxHeight),
              builder: (context, snapshot) {
                return snapshot.data;
              },
            );
          },
        ),
      );
    }
    //720p 1280x720 -- Ok //1080p 1920x1080 -- Ok
    if (controller.isDesktopLg(context: context)) {
      return Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return FutureBuilder<Widget>(
              //currentIndex
              future: getLayout(constraints.maxWidth, constraints.maxHeight,
                  boxFit: BoxFit.cover),
              builder: (context, snapshot) {
                return snapshot.data;
              },
            );
          },
        ),
      );
    }
    //2K - 2048x[unspecified] -- Ok
    if (controller.isDesktopLgDown(context: context)) {
      return Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return FutureBuilder<Widget>(
              //currentIndex
              future: getLayout(constraints.maxWidth, constraints.maxHeight,
                  boxFit: BoxFit.cover),
              builder: (context, snapshot) {
                if (snapshot.hasData){
                  return snapshot.data;
                }else {
                  return  SizedBox(
                    child: CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    );
                  }
              },
            );
          },
        ),
      );
    } // Mobile -- Ok
    else {
      return Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return FutureBuilder<Widget>(
              //currentIndex
              future: getLayout(constraints.maxWidth, constraints.maxHeight,
                  boxFit: BoxFit.contain),
              builder: (context, snapshot) {
                return snapshot.data;
              },
            );
          },
        ),
      );
    }
  }

  Future<Widget> getLayout(double width, double height, {BoxFit boxFit}) async {
    noticia = await noticiaDAO.getProxima(widget.conteudoModel.conteudo.id);
    
    template = await templateDAO.findPorId(noticia.idTemplate);
    // List<ConteudoTemplateModel> listaConteudo =
    //     await dao.getAllConteudoWithTemplate();
    List<Widget> children = [];
    visualizadoDAO.registrarVisualizacao(widget.conteudoModel.conteudo.id, noticia.id);
    //Ler todos os registros do banco
    // listaConteudo.forEach((e) async {
    //Verifica se o objeto possui campo
    if (template.campos != null) {
      //Decodifica json do objeto 'Campos' quando existir
      //print(widget.conteudo.conteudo.campos);
      var content = jsonDecode( template.campos );
      // Le os atributos do Json Campos'
      content.forEach((e) {
        // Converte json em Model
        final campoConvert = ConteudosCampo.fromJson(e);
        switch (campoConvert.variavel){
          case 'titulo':
            campoConvert.valor = noticia.titulo;
            break;
          case 'descricao':
            campoConvert.valor = noticia.descricao;
            break;
          case 'link':
            campoConvert.valor = noticia.link;
            break;            
          case 'datapublicado':
            campoConvert.valor = DateFormat('dd/MM/yyyy').format(noticia.dataPublicadao);
            break;
        }
        //Seto posicao na tela
        var px = campoConvert.positionLeft * width / 100;
        var py = campoConvert.positionTop * height / 100;

        var fontColor = campoConvert.fonteCor.replaceAll('#', '0xFF');
        print(fontColor);

        //Crio stack com os Atributos
        children.add(
          Positioned(
            left: px,
            top: py,
            child: Text(campoConvert.valor,
                style: TextStyle(
                    fontSize: campoConvert.fonteTamanho,
                    fontFamily: campoConvert.fonte,
                    color: Color(int.parse(fontColor)))),
          ),
        );
      });
    }
    // });
    //retorno Componente
    return Container(
      //height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: FileImage(this.widget.conteudoModel.file), fit: boxFit),
      ),
      child: Stack(children: children),
    );
  }
 
}
