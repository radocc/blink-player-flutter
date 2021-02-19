import 'dart:io';

import 'package:blink/app/pages/splash/splash_controller.dart';
import 'package:blink/app/shared/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WidgetLogin extends StatefulWidget {
  final int number;

  WidgetLogin({this.number});

  @override
  _WidgetLoginState createState() => new _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  @override
  Widget build(BuildContext context) {
    SplashController controller = SplashController();

    if (Platform.isAndroid) {
      switch (widget.number) {
        //3G/4G
        case 1:
          return Scaffold(
              body: FutureBuilder(
                  future: controller.isInternetMobile(),
                  builder: (ctx, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            constraints:
                                BoxConstraints(minWidth: 100, maxHeight: 180),
                            child: SvgPicture.asset(imageSplash),
                          ),
                          SizedBox(height: 25),
                          CircularProgressIndicator(),
                          SizedBox(height: 20),
                          Text('Carregando informações....',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ));
                    } else {
                      if (snapshot.hasError)
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 100, maxHeight: 180),
                                child: SvgPicture.asset(imageSplash),
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
                                    Text('Erro ao buscar os dados no servidor',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      else
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (_, int index) {
                            return Text(snapshot.data[index]);
                          },
                        );
                    }
                  }));

          break;
        //Wifi
        case 2:
          return Scaffold(
              body: FutureBuilder(
                  future: controller.isInternetMobile(),
                  builder: (ctx, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            constraints:
                                BoxConstraints(minWidth: 100, maxHeight: 180),
                            child: SvgPicture.asset(imageSplash),
                          ),
                          SizedBox(height: 25),
                          CircularProgressIndicator(),
                          SizedBox(height: 20),
                          Text('Carregando informações....',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ));
                    } else {
                      if (snapshot.hasError)
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 100, maxHeight: 180),
                                child: SvgPicture.asset(imageSplash),
                                // child: Image.asset('assets/teste.jpeg'),
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
                                    Text('Erro ao buscar os dados no servidor',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      else
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (_, int index) {
                            return Text(snapshot.data[index]);
                          },
                        );
                    }
                  }));
          break;
        //Sem conexão
        case 3:
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(minWidth: 100, maxHeight: 180),
                    child: SvgPicture.asset(imageSplash),
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: Column(
                      children: <Widget>[
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        SizedBox(height: 25),
                        Text('Erro, verifique a sua conexão com a internet',
                            style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
          break;
      }
    } else if (Platform.isLinux) {
      switch (widget.number) {
        //Possui conexão
        case 1:
          return Scaffold(
              body: FutureBuilder(
                  future: controller.valueHardware(),
                  builder: (ctx, snapshot) {
                    // if (snapshot.connectionState == ConnectionState.waiting) {
                    //   return Center(
                    //       child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: <Widget>[
                    //       Container(
                    //         constraints:
                    //             BoxConstraints(minWidth: 100, maxHeight: 180),
                    //         child: SvgPicture.asset(imageSplash),
                    //       ),
                    //       SizedBox(height: 25),
                    //       CircularProgressIndicator(),
                    //       SizedBox(height: 20),
                    //       Text('Carregando informações....',
                    //           style: TextStyle(fontWeight: FontWeight.w500)),
                    //     ],
                    //   ));
                    // } else {
                    if (snapshot.hasError)
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              constraints:
                                  BoxConstraints(minWidth: 100, maxHeight: 200),
                              child: SvgPicture.asset(imageSplash),
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
                                  Text('Erro ao buscar os dados no servidor',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    else
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (_, int index) {
                          return Text(snapshot.data[index]);
                        },
                      );
                  }
                  //}
                  ));
          break;
        //Sem conexão
        case 2:
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(minWidth: 100, maxHeight: 200),
                    child: SvgPicture.asset(imageSplash),
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: Column(
                      children: <Widget>[
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        SizedBox(height: 25),
                        Text('Erro, verifique a sua conexão com a internet',
                            style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
          break;
      }
    }
  }
}
