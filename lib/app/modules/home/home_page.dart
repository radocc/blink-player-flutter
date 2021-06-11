import 'package:blink/app/modules/carousel/carousel_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path_provider/path_provider.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    super.initState();
    controller.setLandscape();
  }

  @override
  void dispose() {
    controller.setDisposeLandscape();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // Inicia o Carousel listando o diretorio
     // é esperado um Future para lidar com o path_provider
     body: CarouselPage(dir: getApplicationDocumentsDirectory()),
    );
  }
}
