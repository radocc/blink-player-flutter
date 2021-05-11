
class PrevisaoItem {
  String tempo;
  String descricao;
  String url;
  double maxima;
  double minima;
  double iuv;
  DateTime data;

  PrevisaoItem(
      {this.tempo,
      this.descricao,
      this.url,
      this.maxima,
      this.minima,
      this.iuv,
      this.data});

  PrevisaoItem.fromJson(Map<String, dynamic> json) {
    tempo = json['tempo'];
    descricao = json['descricao'];
    url = json['url'];
    maxima = json['maxima'];
    minima = json['minima'];
    iuv = json['iuv'];
    //data = DateFormat.yMd().parse(json['data']);
    //data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tempo'] = this.tempo;
    data['descricao'] = this.descricao;
    data['url'] = this.url;
    data['maxima'] = this.maxima;
    data['minima'] = this.minima;
    data['iuv'] = this.iuv;
    data['data'] = this.data;
    return data;
  }
}
