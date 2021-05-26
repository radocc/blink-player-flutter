import 'package:blink/app/modules/empity_carousel/empity_carousel_controller.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                      controller.sincronizar();
                    },
                    child: Text('Sincronizar'))
              ],
            )),
          ],
        ),
      ),
    );
  }
}
