import 'dart:async';

import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TouchLeftScreen extends StatefulWidget {
  final double topSize;

  const TouchLeftScreen({Key key, this.topSize}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TouchLeftScreenState();
}

class TouchLeftScreenState extends State<TouchLeftScreen> {
  double posx = 100.0;
  double posy = 100.0;
  bool _visible = false;

  void onTapDown(BuildContext context, TapDownDetails details) {
    print('TapDown: + ${details.globalPosition}');
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(details.globalPosition);

    setState(() {
      posx = localOffset.dx;
      posy = localOffset.dy;
      _visible = true;

      if (_visible == true) {
        Timer(Duration(minutes: 1), () {
          setState(() {
            _visible = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('dd-MM-yyyy hh-MM').format(now);

    return Padding(
      padding: EdgeInsets.fromLTRB(0, widget.topSize, 0, 0),
      child: Container(
        child: ListTile(
          title: Text(formatter),
          trailing: Wrap(
            spacing: 12,
            children: <Widget>[
              ConnectivityBuilder(builder: (context, isConnected, status) {
                return Icon(isConnected == true ? Icons.wifi : Icons.wifi_off,
                    color: Colors.redAccent[700]);
              }),
              ConnectivityBuilder(builder: (context, isConnected, status) {
                return Icon(
                    isConnected == true ? Icons.cloud_queue : Icons.cloud_off,
                    color: Colors.redAccent[700]);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
