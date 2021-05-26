import 'package:blink/app/components/loading_midias.dart';
import 'package:blink/app/modules/ative_player/ative_player_page.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/empity_carousel/empity_carousel_page.dart';
import 'package:blink/app/modules/home/home_page.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  void initState() {
    controller.onInit();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('dd-MM-yyyy HH:mm').format(now);

    return Scaffold(
        body: StreamBuilder<Equipamento>(
            stream: controller.streamPostServer.stream,
            builder: (ctx, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      constraints:
                          BoxConstraints(minWidth: 100, maxHeight: 180),
                      child: Image.asset('assets/logo_versa.png'),
                    ),
                    SizedBox(height: 25),
                    SizedBox(height: 20),
                    Text('Bem vindo a sua tv cooporativa...',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    SizedBox(height: 15),
                  ],
                ));
              } else {
                if (snap.hasError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          constraints:
                              BoxConstraints(minWidth: 100, maxHeight: 180),
                          child: Image.asset('assets/logo_versa.png'),
                        ),
                        SizedBox(height: 25),
                        Container(
                          child: Column(
                            children: <Widget>[
                              CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.red),
                              ),
                              SizedBox(height: 25),
                              Text('Erro ao buscar os dados no servidor, ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Text('revisar a conexão com a internet, ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                } else
                  return FutureBuilder(
                      future: controller.sincronizar(),
                      builder: (ctx, snap) {
                        if (!snap.hasData && !snap.hasError) {
                          return LoadingMidias();
                        //} 
                        //else if (snap.data == false) {
                          //return EmpityCarouselPage(); 
                        } else if (snap.hasError) {
                          return Center(
                            child: Text("${snap.error.toString()}"),
                          );
                        } else {
                          return HomePage();
                        }
                      });
              }
            }));
  }
}
