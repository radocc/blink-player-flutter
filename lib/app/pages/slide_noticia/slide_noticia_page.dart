import 'dart:convert';

import 'package:blink/app/models/conteudo_campos.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/pages/slide_noticia/slide_noticia_controller.dart';
import 'package:blink/app/shared/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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

  @override
  void initState() {
    super.initState();
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
                return snapshot.data;
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
    //Abre o banco
    // ConteudoDAO dao = Database.instance.conteudoDAO;
    //Chama metodo para buscar no banco
    // List<ConteudoTemplateModel> listaConteudo =
    //     await dao.getAllConteudoWithTemplate();
    List<Widget> children = [];

    //Ler todos os registros do banco
    // listaConteudo.forEach((e) async {
    //Verifica se o objeto possui campo
    if (widget.conteudoModel.conteudo.campos != null) {
      //Decodifica json do objeto 'Campos' quando existir
      //print(widget.conteudo.conteudo.campos);
      var content = jsonDecode(widget.conteudoModel.conteudo.campos);
      // Le os atributos do Json Campos'
      content.forEach((e) {
        // Converte json em Model
        final campoConvert = ConteudosCampo.fromJson(e);

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
            child: Text(campoConvert.nome,
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

/*
  Future<Widget> getLayout(double width, double height, int index) async {
    //Abre o banco
    ConteudoDAO dao = Database.instance.conteudoDAO;
    //Chama metodo para buscar no banco
    List<ConteudoTemplateModel> lista = await dao.getAllConteudoWithTemplate();

    //var quantCampo = 0;
    List<Widget> children = [];

    ConteudoTemplateModel item = lista[index];

    if (item.conteudo.campos != null) {
      //Decodifica json do objeto 'Campos' quando existir
      var content = jsonDecode(item.conteudo.campos);
      // Le os atributos do Json Campos'
      content.forEach((e) {
        print('OBJETOS: ' + e.toString());
        // Converte json em Model
        final campoConvert = ConteudosCampo.fromJson(e);

        //Seto posicao na tela
        var px = campoConvert.positionLeft * width / 100;
        var py = campoConvert.positionTop * height / 100;

        //Crio stack com os Atributos
        children.add(
          Positioned(
            left: px,
            top: py,
            child: Text(campoConvert.nome),
          ),
        );
      });

      //print(content.toString());
      //print('QTD CAMPOS: ' + content.length.toString());
      //quantCampo += i;
      //print('QTD CONTEUDO COM CAMPOS: ' + quantCampo.toString());
    }
    // }
    //);
    //retorno Componente
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(image: FileImage(this.widget.conteudo.file)),
      ),
      child: Stack(children: children),
    );
  } */
}
