import 'dart:convert';
import 'dart:io';

import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/dao/loteria_resultado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_campos.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/pages/slide_loteria/slide_loteria_controller.dart';
import 'package:blink/app/shared/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

//
// Tempo para passar o slide do carousel
//
const nextDuration = Duration(seconds: 10);

class SlideLoteriaPage extends StatefulWidget {
  final Function next;
  final ConteudoTemplateModel conteudoModel;
  final Future<Directory> dir;
  const SlideLoteriaPage(this.conteudoModel,
      {@required this.next, @required this.dir});

  @override
  _SlideLoteriaPageState createState() => _SlideLoteriaPageState();
}

class _SlideLoteriaPageState
    extends ModularState<SlideLoteriaPage, SlideLoteriaController> {
  //int currentIndex = 0;
  ConteudoVisualizadoDAO visualizadoDAO;
  LoteriaResultadosDAO resultadosDAO;
  File arquivo;
  @override
  void initState() {
    super.initState();
    visualizadoDAO = Database.instance.conteudoVisualizadoDAO;
    resultadosDAO = Database.instance.loteriaResultadosDAO;
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
                if (snapshot.hasData) {
                  return snapshot.data;
                } else {
                  return Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    ),
                  );
                }
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
                if (snapshot.hasData) {
                  return snapshot.data;
                } else {
                  return Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    ),
                  );
                }
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
                if (snapshot.hasData) {
                  return snapshot.data;
                } else {
                  return Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    ),
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
                if (snapshot.hasData) {
                  return snapshot.data;
                } else {
                  return Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    ),
                  );
                }
              },
            );
          },
        ),
      );
    }
  }

  Future<Widget> getLayout(double width, double height, {BoxFit boxFit}) async {
    visualizadoDAO.registrarVisualizacao(
        widget.conteudoModel.conteudo.id, null);
    List<Widget> children = [];
    Directory directory = await widget.dir;
    arquivo =
        File('${directory.path}/${widget.conteudoModel.template.nomeArquivo}');
    LoteriaResultado resultado = await resultadosDAO
        .buscarResultado(widget.conteudoModel.conteudo.idLoteria);   

    //Verifica se o objeto possui campo
    if (widget.conteudoModel.conteudo.campos != null) {
      //Decodifica json do objeto 'Campos' quando existir
      var content = jsonDecode(widget.conteudoModel.conteudo.campos);
      // Le os atributos do Json Campos'
      content.forEach((e) {
        // Converte json em Model
        final campoConvert = ConteudosCampo.fromJson(e);

        switch (campoConvert.variavel) {
          case 'dataSorteio':
            final formatter =
                new DateFormat('dd/MM/yyyy').format(resultado.dataSorteio);
            campoConvert.valor = formatter;
            break;
          case 'numeros':
            campoConvert.valor = resultado.numeros;
            break;
          case 'codigoSorteio':
            campoConvert.valor = resultado.codigoSorteio;
            break;
          case 'dataProximoSorteio':
            final formatter = new DateFormat('dd/MM/yyyy')
                .format(resultado.dataProximoSorteio);
            campoConvert.valor = formatter;
            break;
          case 'valorProximoSorteio':
            campoConvert.valor =
                NumberFormat.currency(locale: "pt-br", symbol: "R\$")
                    .format(resultado.valorProximoSorteio);
            break;
        }

        //Seto posicao na tela
        var widthComponent = campoConvert.positionLeft * width / 100;
        var heightComponent = campoConvert.positionTop * height / 100;

        //Seto tamanho do container
        var widthContainer = campoConvert.width * width / 100;
        var heightContainer = campoConvert.height * height / 100;

        var fontColor = campoConvert.fonteCor.replaceAll('#', '0xFF');

        //Crio stack com o s Atributos
        children.add(
          Positioned(
            left: widthComponent,
            top: heightComponent,
            child: Container(
              alignment: campoConvert.alinhamento == "Left"
                  ? Alignment.centerLeft
                  : campoConvert.alinhamento == 'Rigth'
                      ? Alignment.centerRight
                      : Alignment.center,
              color: Colors.orange,
              width: widthContainer,
              height: heightContainer,
              child: Text(campoConvert.valor,
              textScaleFactor: 1.0,
                  style: TextStyle(
                      fontSize: campoConvert.fonteTamanho,
                      fontFamily: campoConvert.fonte,
                      color: Color(int.parse(fontColor)))),
            ),
          ),
        );
      });
    }

    //retorna o componente
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: FileImage(this.arquivo), fit: boxFit),
      ),
      child: Stack(children: children),
    );
  }
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
