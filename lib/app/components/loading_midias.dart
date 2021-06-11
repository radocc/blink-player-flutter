import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';

class LoadingMidias extends StatefulWidget {
  final double porcent;

  LoadingMidias({this.porcent});

  @override
  State<StatefulWidget> createState() => LoadingMidiasState();
}

class LoadingMidiasState extends State<LoadingMidias> {
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('dd-MM-yyyy HH:mm').format(now);

    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 0),
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
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(minWidth: 100, maxHeight: 180),
                  child: Image.asset('assets/logo_versa.png'),
                ),
                SizedBox(height: 10),
                Text('Atualizando seus conteúdos...'),
                SizedBox(height: 15),
                LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green)),
                SizedBox(height: 15),
                //Observer(
                  //builder: (_) {
                   //return 
                   //Text(widget.porcent.toString());
                  //},)  
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
