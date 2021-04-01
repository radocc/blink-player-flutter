import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScreenAtiveFalse extends StatefulWidget {
  final String id;
  final String nome;
  final String data;
  final String uuid;

  const ScreenAtiveFalse({Key key, this.id, this.nome, this.data, this.uuid}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ScreenAtiveFalseState();
}

class ScreenAtiveFalseState extends State<ScreenAtiveFalse> {
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('dd-MM-yyyy hh-MM').format(now);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
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
                //controller.postServer();
              },
              child: Text('Verificar'))
        ],
      ),
    );
  }
}
