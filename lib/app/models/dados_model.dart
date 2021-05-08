import 'package:blink/app/models/exceptions/dados_exception.dart';
import 'package:blink/app/models/factory_model.dart';
import 'package:blink/app/shared/constants.dart';
import 'package:intl/intl.dart';

class DadosModel<T> {
  int inicio = 0;
  int limite = 100;
  int totalRegistros = 0;
  DateTime ultimaRequisicao;
  DateTime proximaRequisicao;
  int identificacao;
  List<T> lista;
  String mensagem;
  DadosException excecao;

  DadosModel({this.inicio, 
    this.limite, 
    this.totalRegistros, 
    this.ultimaRequisicao, 
    this.proximaRequisicao, 
    this.identificacao, 
    this.lista, 
    this.mensagem, 
    this.excecao});

  DadosModel.fromJson(Map<String, dynamic> json) {
    inicio = json['inicio'];
    limite = json['limite'];
    totalRegistros = json['totalRegistros'];
    if (json['ultimaRequisicao'] != null)
      ultimaRequisicao = DateTime.fromMillisecondsSinceEpoch(json['ultimaRequisicao'] as int);
    if (json['proximaRequisicao'] != null)
      proximaRequisicao = DateTime.fromMillisecondsSinceEpoch(json['proximaRequisicao'] as int);
    identificacao = json['identificacao'];
    if (json['lista'] != null) {
      var decodedList = <T>[];
      json['lista'].forEach((e) {
        decodedList.add(factoryModel[T](e));
      }); 
      lista = decodedList;
    }
    mensagem = json['mensagem'];
    if (json['excecao'] != null)
      excecao = DadosException.fromJson(json['excecao']);
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    if (inicio != null)
      data['inicio'] = inicio;
    if (limite != null)
      data['limite'] = limite;
    if (totalRegistros != null)
      data['totalRegistros'] = totalRegistros;
    if (ultimaRequisicao != null)
      data['ultimaRequisicao'] = dateFormat.format(ultimaRequisicao);
    if (proximaRequisicao != null)
      data['proximaRequisicao'] = dateFormat.format(proximaRequisicao);
    if (identificacao != null)
      data['identificacao'] = identificacao;
    if (lista != null) {
      var jsonList = <Map<String, dynamic>>[];
      lista.forEach((e) {
        jsonList.add((e as dynamic).toJson());
      });
      data['lista'] = jsonList;
    }
    if (mensagem != null)
      data['mensagem'] = mensagem;
    if (excecao != null)
      data['excecao'] = excecao.toJson();
    return data;
  }
}
