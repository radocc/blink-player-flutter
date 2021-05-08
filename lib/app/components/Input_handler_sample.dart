import 'dart:convert';

import 'package:flutter/material.dart';

/* item {
  "id": 66,
  "nome": "preço",
  "tipo": 3,
  "limite": null,
  "fonte": "Arial",
  "fonteTamanho": 18,
  "cadastro": false,
  "fonteCor": "#000000",
  "positionTop": 78.614,
  "positionLeft": 7.258,
  "resolucaoImagem": null,
  "angulo": 0,
  "imagemFormato": null,
  "numeroLinhas": 1,
  "sequencia": 3,
  "indice": 0,
  "fonteEspessura": "REGULAR",
  "height": 25,
  "width": 50,
  "valor": ""
}*/
class TemplateRender extends StatefulWidget {
  final String template;

  TemplateRender({Key key, this.template}) : super(key: key);

  @override
  _TemplateRenderState createState() => _TemplateRenderState();
}

class _TemplateRenderState extends State<TemplateRender> {
  Map<String, String> values = {};

  Widget getLayout(double width, double height) {
    values.clear(); // Limpar o formulário antigo

    List<Widget> children = [];
    List<dynamic> items = jsonDecode(widget.template);

    for (Map<String, dynamic> item in items) {
      // Alterar valor inicial
      values[item['nome']] = item['valor'];

      var px = item['positionLeft'] * width / 100;
      var py = item['positionTop'] * height / 100;

      var w = item['width'].toDouble() * width / 100;
      var h = item['height'].toDouble() * height / 100;

      children.add(
        Positioned(
          left: px,
          top: py,
          child: Container(
            width: w,
            height: h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(item["nome"]),
                Expanded(
                  child: InputHandler(
                    initial: item['valor'],
                    maxLine: item['numeroLinhas'],
                    update: (value) {
                      // Modificar valor da lista
                      values[item['nome']] = value;
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return Stack(children: children);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return getLayout(constraints.maxWidth, constraints.maxHeight);
        },
      ),
    );
  }
}

class InputHandler extends StatefulWidget {
  final int maxLine;
  final String initial;
  final Function(String) update;

  InputHandler({
    Key key,
    this.maxLine,
    this.initial,
    this.update,
  }) : super(key: key);

  @override
  _InputHandlerState createState() => _InputHandlerState();
}

class _InputHandlerState extends State<InputHandler> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = new TextEditingController()
      ..text = widget.initial
      ..addListener(() {
        widget.update(_controller.text);
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLine,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      controller: _controller,
    );
  }
}