import 'dart:convert';
import 'dart:io';

import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_campos.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/pages/slide_default/slide_default_controller.dart';
import 'package:blink/app/shared/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

//
// Tempo para passar o slide do carousel
//
const nextDuration = Duration(seconds: 10);

class SlideDefaultPage extends StatefulWidget {
  final Function next;
  final ConteudoTemplateModel conteudoModel;
  final Future<Directory> dir;
  const SlideDefaultPage(this.conteudoModel,
      {@required this.next, @required this.dir});

  @override
  _SlideDefaultPageState createState() => _SlideDefaultPageState();
}

class _SlideDefaultPageState
    extends ModularState<SlideDefaultPage, SlideDefaultController> {
  //int currentIndex = 0;
  ConteudoVisualizadoDAO visualizadoDAO;
  File arquivo;

  @override
  void initState() {
    super.initState();
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
    List<Widget> children = [];
    visualizadoDAO = Database.instance.conteudoVisualizadoDAO;
    Directory directory = await widget.dir;
    if (widget.conteudoModel.conteudo.tipo == 1) {
      arquivo = File(
          '${directory.path}/${widget.conteudoModel.conteudo.nomeArquivo}');
    } else if (widget.conteudoModel.conteudo.tipo == 2) {
      arquivo = File(
          '${directory.path}/${widget.conteudoModel.conteudo.nomeArquivo}');
    } else if (widget.conteudoModel.conteudo.tipo == 6) {
      arquivo = File(
          '${directory.path}/${widget.conteudoModel.template.nomeArquivo}');
    }

    //Ler todos os registros do banco
    //Verifica se o objeto possui campo
    if (widget.conteudoModel.conteudo.campos != null) {
      //Decodifica json do objeto 'Campos' quando existir
      var content = jsonDecode(widget.conteudoModel.conteudo.campos);
      // Le os atributos do Json Campos'
      content.forEach((e) {
        // Converte json em Model
        final campoConvert = ConteudosCampo.fromJson(e);

        //Seto posicao na tela
        var px = campoConvert.positionLeft * width / 100;
        var py = campoConvert.positionTop * height / 100;

        var valor;
        if (campoConvert.tipo != null) {
          if (campoConvert.tipo == 8) {
            double value = double.parse(campoConvert.valor);
            String formatValue =
                NumberFormat.simpleCurrency(locale: 'pt').format(value);
            valor = formatValue;
          } else if (campoConvert.tipo == 3) {
            double value = double.parse(campoConvert.valor);
            String formatValue = NumberFormat("#,##0.00", "en_US").format(value);
            valor = formatValue;
          } else {
            valor = campoConvert.valor;
          }
        }

        //Seto tamanho do container
        var widthContainer = campoConvert.width * width / 100;
        var heightContainer = campoConvert.height * height / 100;

        var fontColor = campoConvert.fonteCor.replaceAll('#', '0xFF');
        print(fontColor);

        //Crio stack com os Atributos
        children.add(
          Positioned(
            left: px,
            top: py,
            child: Container(
              alignment: campoConvert.alinhamento == "Left"
                  ? Alignment.centerLeft
                  : campoConvert.alinhamento == 'Rigth'
                      ? Alignment.centerRight
                      : Alignment.center,
              width: widthContainer,
              height: heightContainer,
              child: Text(valor,
                  style: TextStyle(
                      fontSize: campoConvert.fonteTamanho,
                      fontFamily: campoConvert.fonte,
                      color: Color(int.parse(fontColor)))),
            ),
          ),
        );
      });
    }
    if (widget.conteudoModel.conteudo.campos != null) {
      //retorno Componente
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: FileImage(this.arquivo), fit: boxFit),
        ),
        child: Stack(children: children),
      );
    } else {
      return Container(
        child: Image.file(this.arquivo, fit: boxFit),
      );
    }
  }
}
