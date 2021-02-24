import 'dart:io';

import 'package:blink/app/components/splash_login.dart';
import 'package:blink/app/shared/constrants.dart';
import 'package:blink/app/shared/my_conectivy.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:network_state/network_state.dart';
//import 'package:network_state/network_state.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller
  Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;

  @override
  void initState() {
    //controller.postServer();
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  @override
  void dispose() {
    _connectivity.disposeStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //     future: controller.postServer(),
    //     builder: (ctz, snap) {
    //       if (snap.hasData) {
    //         return Text('ok');
    //       } else {
    //         return Center(
    //           child: Column(
    //             children: [
    //               CircularProgressIndicator(
    //                 valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
    //               ),
    //               SizedBox(height: 30),
    //               Text('Falha', style: TextStyle(fontWeight: FontWeight.w500))
    //             ],
    //           ),
    //         );

    if (Platform.isAndroid) {
      switch (_source.keys.toList()[0]) {
        case ConnectivityResult.none:
          //Offline
          return WidgetLogin(number: 3);
          break;
        case ConnectivityResult.mobile:
          //3G/4G: Online
          return WidgetLogin(number: 1);
          break;
        case ConnectivityResult.wifi:
          //WiFi: Online
          return WidgetLogin(number: 2);
      }
    } else {
      return Scaffold(
        body: FutureBuilder(
            future: controller.isInternetLinux(),
            builder: (context, snap) {
              if (snap.hasError) {
                return WidgetLogin(number: 2);
              }
              if (!snap.hasData) {
                return Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      constraints:
                          BoxConstraints(minWidth: 100, maxHeight: 200),
                      child: Image.asset('assets/teste.jpeg'),
                    ),
                    SizedBox(height: 25),
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text('Checando a conexão com a internet....'),
                  ],
                ));
              } else if (snap.data) {
                return WidgetLogin(number: 1);
              } else {
                return WidgetLogin(number: 2);
              }
            }),
      );
    }

    //     return Scaffold(
    //   body: NetworkStateBuilder(
    //     builder: (BuildContext context, AsyncSnapshot snap) {
    //       if (snap.hasData) {
    //         return snap.data
    //             ? WidgetLogin(number: 1)
    //             : WidgetLogin(number: 2);
    //       } else {
    //         return WidgetLogin(number: 2);
    //       }
    //     },
    //   ),
    // );

    // return Scaffold(
    //   body: FutureBuilder(
    //       future: controller.isInternetLinux(),
    //       builder: (context, snap) {
    //         if (snap.hasError) {
    //           return WidgetLogin(number: 2);
    //         }
    //         if (!snap.hasData) {
    //           return Center(
    //               child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Container(
    //                 constraints:
    //                     BoxConstraints(minWidth: 100, maxHeight: 200),
    //                 child: Image.asset('assets/teste.jpeg'),
    //               ),
    //               SizedBox(height: 25),
    //               CircularProgressIndicator(),
    //               SizedBox(height: 20),
    //               Text('Checando a conexão com a internet....'),
    //             ],
    //           ));
    //         } else if (snap.data) {
    //           return WidgetLogin(number: 1);
    //         } else {
    //           return WidgetLogin(number: 2);
    //         }
    //       }),
    // );

    // return MaterialApp(
    //   home: Scaffold(
    //       body: FutureBuilder(
    //           future: controller.isInternet(),
    //           builder: (ctx, snap) {
    //             if (snap.hasData) {
    //               return ListView.builder(
    //                 itemCount: snap.data.length,
    //                 itemBuilder: (_, int index) {
    //                   return Text(snap.data[index]);
    //                 },
    //               );
    //             } else {
    //               return Column(
    //                 children: [
    //                   CircularProgressIndicator(
    //                     valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
    //                   ),
    //                   SizedBox(height: 30),
    //                   Text('Falha',
    //                       style: TextStyle(fontWeight: FontWeight.w500))
    //                 ],
    //               );
    //             }
    //           })),
    // );
  }
}
