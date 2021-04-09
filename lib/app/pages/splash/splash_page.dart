import 'package:blink/app/components/loading_midias.dart';
import 'package:blink/app/components/screen_ative_false.dart';
import 'package:blink/app/database/database.dart';
import 'package:blink/app/modules/home/home_page.dart';
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
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('dd-MM-yyyy HH:mm').format(now);

    return Scaffold(
        body: FutureBuilder<Equipamento>(
            future: controller.postServer(),
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
                              Text('Erro ao buscar os dados no servidor',
                                  style: TextStyle(fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                } else
                  return snap.data.ativado == false
                      ? ScreenAtiveFalse(
                          id: snap.data.id.toString(),
                          nome: snap.data.nome,
                          data: formatter,
                          uuid: snap.data.uuid)
                      : FutureBuilder<List<Conteudo>>(
                          future: controller.postConteudos(),
                          builder: (ctx, snap) {
                            if (!snap.hasData && !snap.hasError) {
                              return LoadingMidias();
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
