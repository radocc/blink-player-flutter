import 'dart:io';

import 'package:blink/app/components/touch_left_screen.dart';
import 'package:blink/app/database/dao/conteudo_dao.dart';
import 'package:blink/app/database/dao/conteudo_visualizado_dao.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/models/conteudo_template_model.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'carousel_controller.dart';

class CarouselPage extends StatefulWidget {
  final Future<Directory> dir;
  const CarouselPage({Key key, @required this.dir}) : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends ModularState<CarouselPage, CarouselController> {
  
  List<ConteudoTemplateModel> filesConteudo;
  ConteudoDAO dao = Database.instance.conteudoDAO;
  ConteudoVisualizadoDAO visualizadoDAO = Database.instance.conteudoVisualizadoDAO;

  @override
  void initState() {
    super.initState();
    controller.onInit();
  }

  @override
  void dispose() {
    controller.pageController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Future para listar os arquivos e separar em imagem e video
      body: FutureBuilder<bool>(
        future: controller.load(widget.dir),
        builder: (context, snap) {
          if (snap.hasData == false) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }         
          // Area do Carousel
          return Scaffold(
            body: ConnectivityBuilder(
              builder: (context, isConnection, status) {
                print('CONEXAO ${status.toString()}');
                return Stack(
                  children: <Widget>[
                    Observer(
                      builder: (context) {
                        return PageView(
                          controller: controller.pageController,
                          children: this.controller.conteudos.map((conteudo) => 
                            controller.getItem(conteudo)
                          ).toList()
                        );
                      }
                    ),
                    Positioned(
                      child: isConnection == false
                          ? TouchLeftScreen(topSize: 0)
                          : Container(),
                    )
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
