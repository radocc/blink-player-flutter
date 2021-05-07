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
    //SystemChrome.setEnabledSystemUIOverlays([]);
    controller.setLandscape();
  }

  @override
  void dispose() {
    controller.setDisposeLandscape();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //DESCOMENTAR ESSE PEDAÇO PARA VER O CAROUSEL
    return Scaffold(
     // Inicia o Carousel listando o diretorio
     // é esperado um Future para lidar com o path_provider
     body: CarouselPage(dir: getApplicationDocumentsDirectory()),
    );

    //ScreenSize controller = ScreenSize();

    //WUXGA - 1920X1200 -- Ok
    //if (controller.isDesktopXl(context: context)) {
      //return TemplateSizeWidget(
        //  valueTopPositioned: 190.0,
        //  valueLeftPositioned: 310.0,
        //  context: context);
    //}
    //720p 1280x720 -- Ok //1080p 1920x1080 -- Ok
    //if (controller.isDesktopLg(context: context)) {
    //  return TemplateSizeWidget(
    //      valueTopPositioned: 140.0,
    //      valueLeftPositioned: 250.0,
    //     context: context);
    //}
    //2K - 2048x[unspecified] -- Ok nao consegui achar resolucao
    //if (controller.isDesktopLgDown(context: context)) {
      // return TemplateSizeWidget(
      //     valueTopPositioned: 120.0, valueLeftPositioned: 210.0);
      //return TemplateSizeWidget(
        //  valueTopPositioned: 100.0, valueLeftPositioned: 160.0);
    //} // Mobile -- Ok
    //else {
     // return TemplateSizeWidget(
       //   valueTopPositioned: 60.0,
        //  valueLeftPositioned: 100.0,
         // context: context);
    //}

    // return Scaffold(
    //   // // Inicia o Carousel listando o diretorio
    //   // // é esperado um Future para lidar com o path_provider
    //   body: CarouselPage(dir: getApplicationDocumentsDirectory()),
    // );
  }
}
