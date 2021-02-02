class PlayerModel {
  String nome;
  String horaInicio;
  String horaFim;
  int orientacao;
  String token;

  PlayerModel(
      {this.nome, this.horaInicio, this.horaFim, this.orientacao, this.token});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    horaInicio = json['horaInicio'];
    horaFim = json['horaFim'];
    orientacao = json['orientacao'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['horaInicio'] = this.horaInicio;
    data['horaFim'] = this.horaFim;
    data['orientacao'] = this.orientacao;
    data['token'] = this.token;
    return data;
  }
}