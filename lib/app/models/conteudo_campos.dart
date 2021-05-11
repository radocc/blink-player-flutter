
class ConteudosCampo {

  int id;
  String nome;
  int tipo;
  String fonte;
  double fonteTamanho;
  String fonteCor;
  String fonteEspessura;
  bool cadastro;
  double positionTop;
  double positionLeft;
  String imagemFormato;
  String resolucaoImagem;
  int angulo;
  int numeroLinha;
  int sequencia;
  int indice;
  num height;
  int width;
  String valor;
  String variavel;

   ConteudosCampo({this.id, 
    this.nome, 
    this.tipo, 
    this.fonte, 
    this.fonteTamanho, 
    this.fonteCor, 
    this.fonteEspessura, 
    this.cadastro, 
    this.positionTop,
    this.positionLeft,
    this.imagemFormato,
    this.resolucaoImagem,
    this.angulo,
    this.numeroLinha,
    this.sequencia,
    this.indice,
    this.height,
    this.width,
    this.valor,
    this.variavel});

  ConteudosCampo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    tipo = json['tipo'];
    fonte = json['fonte'];
    fonteTamanho = json['fonteTamanho'];
    fonteCor = json['fonteCor'];
    fonteEspessura = json['fonteEspessura'];
    cadastro = json['cadastro'];
    positionTop = json['positionTop'];
    positionLeft = json['positionLeft'];
    imagemFormato = json['imagemFormato'];
    resolucaoImagem = json['resolucaoImagem'];
    angulo = json['angulo'];
    numeroLinha = json['numeroLinha'];
    sequencia = json['sequencia'];
    indice = json['indice'];
    height = json['height'];
    width = json['width'];
    valor = json['valor'];
    variavel = json['variavel'];

  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['tipo'] = this.tipo;
    data['fonte'] = this.fonte;
    data['fonteTamanho'] = this.fonteTamanho;
    data['fonteCor'] = this.fonteCor;
    data['fonteEspessura'] = this.fonteEspessura;
    data['cadastro'] = this.cadastro;
    data['positionTop'] = this.positionTop;
    data['positionLeft'] = this.positionLeft;
    data['imagemFormato'] = this.imagemFormato;
    data['resolucaoImagem'] = this.resolucaoImagem;
    data['angulo'] = this.angulo;
    data['numeroLinha'] = this.numeroLinha;
    data['sequencia'] = this.sequencia;
    data['indice'] = this.indice;
    data['height'] = this.height;
    data['width'] = this.width;
    data['valor'] = this.valor;
    data['variavel'] = this.variavel;
    return data;
  }

}