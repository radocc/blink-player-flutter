import 'package:blink/app/database/database.dart';
import 'package:blink/app/database/entity/conteudo_entity.dart';
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
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('dd-MM-yyyy hh-MM').format(now);

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
                    // CircularProgressIndicator(
                    //     valueColor:
                    //         AlwaysStoppedAnimation<Color>(Colors.green)),
                    SizedBox(height: 20),
                    Text('Bem vindo a sua tv cooporativa...',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    SizedBox(height: 15),
                    // Text('Carregando informações...',
                    //     style: TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ));
              } else {
                if (snap.hasError)
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
                else
                  return snap.data.ativado == false
                      ? Scaffold(
                          body: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                child: ListTile(
                                  title: Text(formatter),
                                  trailing: Wrap(
                                    spacing: 12,
                                    children: <Widget>[
                                      ConnectivityBuilder(builder:
                                          (context, isConnected, status) {
                                        return Icon(isConnected == true
                                            ? Icons.wifi
                                            : Icons.wifi_off);
                                      }),
                                      ConnectivityBuilder(builder:
                                          (context, isConnected, status) {
                                        return Icon(isConnected == true
                                            ? Icons.cloud_queue
                                            : Icons.cloud_off);
                                      }),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 100, maxHeight: 180),
                                child: Image.asset('assets/logo_versa.png'),
                              ),
                              SizedBox(height: 15),
                              Text('Seu Player não está ativo !'),
                              Text(
                                  'Para ativa-lo acesse seu painel gerenciador.'),
                              SizedBox(height: 20),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Código: ' + snap.data.id.toString()),
                                    Text('Nome: ' + snap.data.nome),
                                    Text('Data: ' + formatter),
                                    Text('UUID:' + snap.data.uuid),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              ElevatedButton(
                                  onPressed: () {
                                    //controller.postServer();
                                  },
                                  child: Text('Verificar'))
                            ],
                          ),
                        )
                      : FutureBuilder<Conteudo>(
                          future: controller.postConteudos(),
                          builder: (ctx, snap) {
                            return Text('Ok');
                          });
              }
              // if (snap.hasData) {
              //   return snap.data.ativado == false
              //       ? Scaffold(
              //           body: Column(
              //             children: <Widget>[
              //               Padding(
              //                 padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              //                 child: ListTile(
              //                   title: Text(formatter),
              //                   trailing: Wrap(
              //                     spacing: 12,
              //                     children: <Widget>[
              //                       Icon(Icons.settings_input_hdmi),
              //                       Icon(Icons.wifi),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(height: 20),
              //               Container(
              //                 constraints:
              //                     BoxConstraints(minWidth: 100, maxHeight: 180),
              //                 child: Image.asset('assets/logo_versa.png'),
              //               ),
              //               SizedBox(height: 15),
              //               Text('Seu Player não está ativo !'),
              //               Text(
              //                   'Para ativa-lo acesse seu painel gerenciador.'),
              //               SizedBox(height: 20),
              //               Container(
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: <Widget>[
              //                     Text('Código: ' + snap.data.id.toString()),
              //                     Text('Nome: ' + snap.data.nome),
              //                     Text('Data: ' + formatter),
              //                     Text('UUID:' + snap.data.uuid),
              //                   ],
              //                 ),
              //               ),
              //               SizedBox(height: 30),
              //               ElevatedButton(
              //                   onPressed: () {
              //                     //controller.postServer();
              //                   },
              //                   child: Text('Verificar'))
              //             ],
              //           ),
              //         )
              //       : Text('Ativo');
              // } else if (snap.connectionState == ConnectionState.waiting) {
              //   return Center(
              //     child: CircularProgressIndicator(),
              //   );
              // } else {
              //   return Center(
              //     child: Column(
              //       children: [
              //         CircularProgressIndicator(
              //           valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              //         ),
              //         SizedBox(height: 30),
              //         Text('Falha ao realizar o Post',
              //             style: TextStyle(fontWeight: FontWeight.w500))
              //       ],
              //     ),
              //   );
              // }
            }));
  }

  // if (Platform.isAndroid) {
  //   return Center(
  //     child: ConnectivityBuilder(
  //       builder: (context, isConnected, status) => isConnected == true
  //           ? WidgetLogin(number: 1)
  //           : WidgetLogin(number: 2),
  //     ),
  //   );
  // } else {
  //   return Scaffold(
  //     body: StreamBuilder(
  //         stream: controller.isInternetLinux2(),
  //         builder: (context, snap) {
  //           if (snap.hasError) {
  //             return WidgetLogin(number: 2);
  //           }
  //           if (!snap.hasData) {
  //             return Center(
  //                 child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: <Widget>[
  //                 Container(
  //                   constraints:
  //                       BoxConstraints(minWidth: 100, maxHeight: 200),
  //                   child: Image.asset('assets/teste.jpeg'),
  //                 ),
  //                 SizedBox(height: 25),
  //                 CircularProgressIndicator(),
  //                 SizedBox(height: 20),
  //                 Text('Checando a conexão com a internet....'),
  //               ],
  //             ));
  //           } else if (snap.data) {
  //             return WidgetLogin(number: 1);
  //           } else {
  //             return WidgetLogin(number: 2);
  //           }
  //         }),
  //   );
}
