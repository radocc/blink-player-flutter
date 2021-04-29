import 'package:blink/app/database/database.dart';

final factoryModel = <Type, Function>{
  Noticia: (Map<String, dynamic> json) => Noticia.fromJson(json),
  Template: (Map<String, dynamic> json) => Template.fromJson(json),
  Conteudo: (Map<String, dynamic> json) => Conteudo.fromJson(json),
  PrevisaoTempo: (Map<String, dynamic> json) => PrevisaoTempo.fromJson(json),
  PrevisaoTempoImagem: (Map<String, dynamic> json) => PrevisaoTempoImagem.fromJson(json),
  LoteriaResultado: (Map<String, dynamic> json) => LoteriaResultado.fromJson(json),
  SequenciaConteudo: (Map<String, dynamic> json) => SequenciaConteudo.fromJson(json)
};
