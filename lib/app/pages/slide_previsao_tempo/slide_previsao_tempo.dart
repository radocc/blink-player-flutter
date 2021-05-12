import 'dart:convert';

import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_campos.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/models/previsao_item_model.dart';
import 'package:blink/app/shared/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'slide_previsao_tempo_controller.dart';

//
// Tempo para passar o slide do carousel
//
const nextDuration = Duration(seconds: 10);

class SlidePrevisaoTempoPage extends StatefulWidget {
  final Function next;
  final ConteudoTemplateModel conteudoModel;
  //final File url;
  const SlidePrevisaoTempoPage(this.conteudoModel, {@required this.next});

  @override
  _SlidePrevisaoTempoPageState createState() => _SlidePrevisaoTempoPageState();
}

class _SlidePrevisaoTempoPageState
    extends ModularState<SlidePrevisaoTempoPage, SlidePrevisaoTempoController> {
  //int currentIndex = 0;
  ConteudoVisualizadoDAO visualizadoDAO;

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
              future: getLayoutPrevisaoTempo(
                  constraints.maxWidth, constraints.maxHeight),
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
              future: getLayoutPrevisaoTempo(
                  constraints.maxWidth, constraints.maxHeight,
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
              future: getLayoutPrevisaoTempo(
                  constraints.maxWidth, constraints.maxHeight,
                  boxFit: BoxFit.cover),
              builder: (context, snapshot) {
                //if (snapshot.hasData) {
                  return snapshot.data;
                // } else {
                //   return Center(
                //     child: SizedBox(
                //       child: CircularProgressIndicator(),
                //       width: 60,
                //       height: 60,
                //     ),
                //   );
                // }
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
              future: getLayoutPrevisaoTempo(
                  constraints.maxWidth, constraints.maxHeight,
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

  Future<Widget> getLayoutPrevisaoTempo(double width, double height,
      {BoxFit boxFit}) async {
    visualizadoDAO.registrarVisualizacao(
        widget.conteudoModel.conteudo.id, null);
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

      var contPrevisao = jsonDecode(widget.conteudoModel.conteudo.previsao);
      List<PrevisaoItem> list = [];

      contPrevisao.forEach((e) {
        final campoPrevisaoTempo = PrevisaoItem.fromJson(e);
        list.add(campoPrevisaoTempo);
      });

      content.forEach((e) {
        // Converte json em Model
        final campoConvert = ConteudosCampo.fromJson(e);

        if (campoConvert.indice != null && campoConvert.indice >= 0) {
          PrevisaoItem previsao = list.elementAt(campoConvert.indice);
          switch (campoConvert.variavel) {
            case 'cidade':
              campoConvert.valor = widget.conteudoModel.conteudo.cidade +
                  ' ' +
                  widget.conteudoModel.conteudo.uf;
              break;
            case 'data':
              final formatter =
               new DateFormat('dd-MM-yyyy').format(previsao.data);
              campoConvert.valor = formatter;
              break;
            case 'tempo':
              campoConvert.valor = previsao.tempo;
              break;
            case 'maxima':
              campoConvert.valor = previsao.maxima.toString();
              break;
            case 'minima':
              campoConvert.valor = previsao.minima.toString();
              break;
            case 'iuv':
              campoConvert.valor = previsao.iuv.toString();
              break;
            case 'url':
              //campoConvert.valor = previsao.url;
              break;
            case 'descricao':
              campoConvert.valor = previsao.descricao;
              break;
          }
        }else if (campoConvert.variavel == 'cidade'){
            campoConvert.valor = widget.conteudoModel.conteudo.cidade +' ' + widget.conteudoModel.conteudo.uf;
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
