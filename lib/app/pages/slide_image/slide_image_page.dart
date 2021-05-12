
import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:blink/app/shared/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'slide_image_controller.dart';

//
// Tempo para passar o slide do carousel
//
const nextDuration = Duration(seconds: 10);

class SlideImagePage extends StatefulWidget {
  final Function next;
  final ConteudoTemplateModel conteudoModel;
  //final File url;
  const SlideImagePage(this.conteudoModel, {@required this.next});

  @override
  _SlideImagePageState createState() => _SlideImagePageState();
}

class _SlideImagePageState
    extends ModularState<SlideImagePage, SlideImageController> {
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
    //retorno Componente
    return Container(
        //height: 300,
        decoration: BoxDecoration(
      image: DecorationImage(
          image: FileImage(this.widget.conteudoModel.file), fit: boxFit),
    ));
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
