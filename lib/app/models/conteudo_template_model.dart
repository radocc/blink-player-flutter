import 'dart:io';

import 'package:blink/app/database/database.dart';

class ConteudoTemplateModel {
  Conteudo conteudo;
  Template template;
  SequenciaConteudo sequenciaConteudo;
  File file;

  ConteudoTemplateModel(
      {this.conteudo, this.template, this.sequenciaConteudo});

  ConteudoTemplateModel.fromJson(Map<String, dynamic> json) {
    conteudo = json['conteudo'];
    template = json['template'];
    sequenciaConteudo = json['sequenciaConteudo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['conteudo'] = this.conteudo;
    data['template'] = this.template;
    data['sequenciaConteudo'] = this.sequenciaConteudo;
    return data;
  }
}