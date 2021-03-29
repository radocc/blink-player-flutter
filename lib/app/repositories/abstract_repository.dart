import 'package:blink/app/shared/environment.dart';

abstract class AbstractRepository {
  String baseUrl = environment.baseUrl;

  String getUrl(String url) {
    return baseUrl + url;
  }
}
