import 'package:blink/app/modules/ative_player/ative_player_controller.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

class AtivePlayerPage extends StatefulWidget {
  final String id;
  final String nome;
  final String data;
  final String uuid;

  const AtivePlayerPage({Key key, this.id, this.nome, this.data, this.uuid}) : super(key: key);

  @override
  _AtivePlayerPageState createState() => _AtivePlayerPageState();

}

class _AtivePlayerPageState extends ModularState<AtivePlayerPage, AtivePlayerController> {
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('dd-MM-yyyy hh-MM').format(now);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: ListTile(
                title: Text(formatter),
                trailing: Wrap(
                  spacing: 12,
                  children: <Widget>[
                    ConnectivityBuilder(builder: (context, isConnected, status) {
                      return Icon(
                          isConnected == true ? Icons.wifi : Icons.wifi_off);
                    }),
                    ConnectivityBuilder(builder: (context, isConnected, status) {
                      return Icon(isConnected == true
                          ? Icons.cloud_queue
                          : Icons.cloud_off);
                    }),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            constraints: BoxConstraints(minWidth: 100, maxHeight: 180),
            child: Image.asset('assets/logo_versa.png'),
          ),
          SizedBox(height: 15),
          Text('Seu Player não está ativo !'),
          Text('Para ativa-lo acesse seu painel gerenciador.'),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Código: ' + widget.id.toString()),
                Text('Nome: ' + widget.nome),
                Text('Data: ' + widget.data),
                Text('UUID:' + widget.uuid),
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                controller.verificar();
              },
              child: Text('Verificar'))
        ],
      ),
    );
  }
}
