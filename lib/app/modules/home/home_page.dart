import 'package:blink/app/pages/permission_handler/permission_handler_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:permission_handler/permission_handler.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.createFolder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                onPressed: () {
                  controller.savePhoto();
                  print('Save Foto');
                },
                child: Text('Salvar Foto')),
            RaisedButton(
                onPressed: () async {
                  PermissionsService().requestPermission(
                      [PermissionGroup.mediaLibrary, PermissionGroup.storage],
                      onPermissionDenied: () {
                    print('Permissao Negada');
                  }, onPermissionAproved: () {
                    Modular.navigator.pushNamed('/fotos');
                  });
                },
                child: Text('Fotos Carousel')),
          ],
        ),
      ),
    );
  }
}
