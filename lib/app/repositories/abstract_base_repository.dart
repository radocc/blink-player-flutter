import 'package:blink/app/shared/environment.dart';

abstract class AbstractBaseRepository {
  String context;

  AbstractBaseRepository(this.context);

  String getUrl(String url) {
    return environment.baseUrl + environment.applicationBase + url;
  }
}
