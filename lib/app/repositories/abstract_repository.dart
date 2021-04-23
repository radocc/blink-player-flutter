import 'package:blink/app/repositories/dio/custom_dio.dart';
import 'package:blink/app/shared/environment.dart';

abstract class AbstractRepository {
  String context;
  final CustomDIO dio = CustomDIO();

  AbstractRepository(this.context);

  String getUrl(String url) {
    return environment.baseUrl + environment.application + this.context + url;
  }
}
