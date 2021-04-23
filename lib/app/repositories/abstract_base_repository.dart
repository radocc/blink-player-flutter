import 'package:blink/app/repositories/dio/custom_dio.dart';
import 'package:blink/app/shared/environment.dart';

abstract class AbstractBaseRepository {
  String context;
  final CustomDIO dio = CustomDIO();

  AbstractBaseRepository(this.context);

  String getUrl(String url) {
    return environment.baseUrl +
        environment.applicationBase +
        this.context +
        url;
  }
}
