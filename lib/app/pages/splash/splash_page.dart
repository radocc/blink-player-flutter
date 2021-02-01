import 'package:blink/app/shared/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.postServer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.postServer(),
      builder: (ctz, snap) {
        if (snap.hasData) {
          return Text('ok');
        } else {
          return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      constraints:
                          BoxConstraints(minWidth: 100, maxHeight: 200),
                      child: SvgPicture.asset(imageSplash),
                    ),
                  ],
                ),
              ));
        }
      },
    );
  }
}
