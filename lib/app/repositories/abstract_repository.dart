import 'package:blink/app/shared/environment.dart';

abstract class AbstractRepository {
  String context;

  AbstractRepository(this.context);

  String getUrl(String url) {
    return environment.baseUrl + environment.application + this.context + url;
  }
}
