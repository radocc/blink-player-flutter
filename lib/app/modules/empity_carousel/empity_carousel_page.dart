import 'package:blink/app/components/touch_left_screen.dart';
import 'package:blink/app/modules/empity_carousel/empity_carousel_controller.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EmpityCarouselPage extends StatefulWidget {
  const EmpityCarouselPage({Key key}) : super(key: key);

  @override
  _EmpityCarouselPageState createState() => _EmpityCarouselPageState();
}

class _EmpityCarouselPageState
    extends ModularState<EmpityCarouselPage, EmpityCarouselController> {
  @override
  void initState() {
    super.initState();
    controller.setLandscape();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConnectivityBuilder(
        builder: (context, isConnected, status) {
          return Stack(children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(minWidth: 100, maxHeight: 180),
                    child: Image.asset('assets/logo_versa.png'),
                  ),
                  SizedBox(height: 15),
                  Container(
                      child: Column(
                    children: [
                      Text('Sem conteúdos!',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      Text(
                          'Acesse o painel gerenciador para \n   cadastrar os seus conteúdos.'),
                      Text('Site: painel.versa.tv'),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            //controller.sincronizar();
                            controller.sincronizar().then((value) {
                              if (value > 0) {
                                Modular.to.pop();
                              }
                            });
                          },
                          child: Text('Sincronizar')),
                    ],
                  )),
                ],
              ),
            ),
            Positioned(
              child: isConnected == false
                  ? TouchLeftScreen(topSize: 0)
                  : Container(),
            )
          ]);
        },
      ),
    );
  }
}
