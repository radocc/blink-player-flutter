const bool isProduction = bool.fromEnvironment('dart.vm.product');

class Debug extends Environment {
  Debug() {
    this.baseUrl = 'http://192.168.2.119:8105/';
    this.applicationBase = 'BaseWeb/rest/';
    this.application = 'TVBlink-Web/rest/';
  }
}

class Prod extends Environment {
  Prod() {
    this.baseUrl = 'http://server.versa.tv:8080/';
    this.applicationBase = 'BaseWeb/rest/';
    this.application = 'TVBlink-Web/rest/';
  }
}

final Environment environment = isProduction ? Prod() : Debug();

abstract class Environment {
  String baseUrl;
  String application;
  String applicationBase;
}
