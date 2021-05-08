const bool isProduction = bool.fromEnvironment('dart.vm.product');

class Debug extends Environment {
  Debug() {
    this.baseUrl = 'http://192.168.0.104:8105/';
    this.applicationBase = 'BaseWeb/rest/';
    this.application = 'TVBlink-Web/rest/';
  }
}

class Prod extends Environment {
  Prod() {
    this.baseUrl = 'http://192.168.2.108:8105/';
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
