import 'dart:io';

import 'package:blink/app/components/splash_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splash_controller.dart';
import 'package:cross_connectivity/cross_connectivity.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  void initState() {
    //controller.postServer();
    super.initState();
  }

  @override
  void dispose() {
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
      return Center(
        child: ConnectivityBuilder(
          builder: (context, isConnected, status) => isConnected == true
              ? WidgetLogin(number: 1)
              : WidgetLogin(number: 2),
        ),
      );
    } else {
      return Scaffold(
        body: StreamBuilder(
            stream: controller.isInternetLinux2(),
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
  }
}
