import 'package:blink/app/components/loading_midias.dart';
import 'package:blink/app/modules/home/home_page.dart';
import 'package:blink/app/modules/download_conteudos/download_conteudo_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DownloadConteudoPage extends StatefulWidget {
  final String title;
  const DownloadConteudoPage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _DownloadConteudoPageState createState() => _DownloadConteudoPageState();
}

class _DownloadConteudoPageState
    extends ModularState<DownloadConteudoPage, DownloadConteudoController> {
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
      body: FutureBuilder(
          future: controller.sincronizar(),
          builder: (ctx, snap) {
            if (!snap.hasData && !snap.hasError) {
              return LoadingMidias(controller.progressService);
            } else if (snap.hasError) {
              return Center(
                child: Text("${snap.error.toString()}"),
              );
            } else {
              return HomePage();
            }
          }),
    );
  }
}
