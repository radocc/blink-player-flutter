const bool isProduction = bool.fromEnvironment('dart.vm.product');

class Debug extends Environment {
  Debug() {
    this.baseUrl = 'http://192.168.0.100/TVBlink-Web/rest/';
  }
}

class Prod extends Environment {
  Prod() {
    this.baseUrl = 'http://192.168.0.100/TVBlink-Web/rest/';
  }
}

final Environment environment = isProduction ? Prod() : Debug();

abstract class Environment {
  String baseUrl;
}
