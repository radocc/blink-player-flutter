import 'package:blink/app/components/touch_left_screen.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/download_conteudos/download_conteudo_page.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
    controller.setLandscape();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //   ConnectivityBuilder(builder: (context, isConnected, status) {
            // return isConnected == true ?
            StreamBuilder<Equipamento>(
                stream: controller.streamPostServer.stream,
                builder: (ctx, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return ConnectivityBuilder(
                        builder: (context, isConnection, status) {
                      return Center(
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  constraints: BoxConstraints(
                                      minWidth: 100, maxHeight: 180),
                                  child: Image.asset('assets/logo_versa.png'),
                                ),
                                SizedBox(height: 25),
                                SizedBox(height: 20),
                                Text('Bem vindo a sua tv cooporativa...',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                SizedBox(height: 15),
                              ],
                            ),
                            Positioned(
                              child: isConnection == false
                                  ? TouchLeftScreen(topSize: 0)
                                  : Container(),
                            )
                          ]));
                    });
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.red),
                                  ),
                                  SizedBox(height: 25),
                                  Text('Erro ao buscar os dados no servidor, ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    } else return DownloadConteudoPage();
                  }
                })
        //       : isConnected == false && controller.load() != null
        //           ? HomePage()
        //           : DownloadConteudoPage();
        // })
        );
  }

  // return Scaffold(
  //     body: ConnectivityBuilder(
  //       builder: (context, isConnected, status) {
  //         isConnected == true ? StreamBuilder<Equipamento>(
  //         stream: controller.streamPostServer.stream,
  //         builder: (ctx, snap) {
  //           if (snap.connectionState == ConnectionState.waiting) {
  //             return ConnectivityBuilder(
  //                 builder: (context, isConnection, status) {
  //               return Center(
  //                   child: Stack(
  //                       alignment: Alignment.topCenter,
  //                       children: <Widget>[
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: <Widget>[
  //                         Container(
  //                           constraints:
  //                               BoxConstraints(minWidth: 100, maxHeight: 180),
  //                           child: Image.asset('assets/logo_versa.png'),
  //                         ),
  //                         SizedBox(height: 25),
  //                         SizedBox(height: 20),
  //                         Text('Bem vindo a sua tv cooporativa...',
  //                             style: TextStyle(fontWeight: FontWeight.w500)),
  //                         SizedBox(height: 15),
  //                       ],
  //                     ),
  //                     Positioned(
  //                       child: isConnection == false
  //                           ? TouchLeftScreen(topSize: 0)
  //                           : Container(),
  //                     )
  //                   ]));
  //             });
  //           } else {
  //             if (snap.hasError) {
  //               return Center(
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Container(
  //                       constraints:
  //                           BoxConstraints(minWidth: 100, maxHeight: 180),
  //                       child: Image.asset('assets/logo_versa.png'),
  //                     ),
  //                     SizedBox(height: 25),
  //                     Container(
  //                       child: Column(
  //                         children: <Widget>[
  //                           CircularProgressIndicator(
  //                             valueColor:
  //                                 AlwaysStoppedAnimation<Color>(Colors.red),
  //                           ),
  //                           SizedBox(height: 25),
  //                           Text('Erro ao buscar os dados no servidor, ',
  //                               style:
  //                                   TextStyle(fontWeight: FontWeight.w500)),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               );
  //             } else
  //             return DownloadConteudoPage();
  //           }
  //         }) : isConnected == false && controller.load() != null ?
  //          HomePage() : DownloadConteudoPage();
  //       },
  //     ));
}
