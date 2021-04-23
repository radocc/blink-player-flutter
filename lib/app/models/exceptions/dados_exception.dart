class DadosException {
  dynamic detailMessage;
  List stackTrace;
  List suppressedExceptions;

  DadosException(
      {this.detailMessage, this.stackTrace, this.suppressedExceptions});

  DadosException.fromJson(Map<String, dynamic> json) {
    detailMessage = json['detailMessage'];
    stackTrace = json['stackTrace'];
    suppressedExceptions = json['suppressedExceptions'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['detailMessage'] = detailMessage;
    data['stackTrace'] = stackTrace;
    data['suppressedExceptions'] = suppressedExceptions;
    return data;
  }
}
