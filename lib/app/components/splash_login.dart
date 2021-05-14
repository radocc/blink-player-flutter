import 'package:flutter/material.dart';

class WidgetLogin extends StatefulWidget {

  WidgetLogin();

  @override
  _WidgetLoginState createState() => new _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: 100, maxHeight: 180),
              child: Image.asset('assets/logo_versa.png'),
            ),
            SizedBox(height: 20),
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
  }
}
