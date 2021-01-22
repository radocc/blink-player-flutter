import 'dart:io';

import 'package:blink/app/modules/carousel_itens/carousel_itens_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path_provider/path_provider.dart';
import 'carousel_controller.dart';

class CarouselPage extends StatefulWidget {
  final String title;
  final Directory directory;
  const CarouselPage({Key key, this.title = "Dados", this.directory})
      : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends ModularState<CarouselPage, CarouselController> {
  //use 'controller' variable to access controller

  Future<Directory> get _localFile async {
    final dir = await getApplicationDocumentsDirectory();
    return Directory('${dir.path}/blink_tv');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<Directory>(
          future: _localFile,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CarouselItensPage(directory: snapshot.data);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
