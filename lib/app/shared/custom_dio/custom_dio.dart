import 'package:blink/app/shared/custom_dio/interceptions.dart';
import 'package:dio/dio.dart';

class CustomDio{

  var _dio;

  CustomDio() {
    _dio = Dio;
  }

  Dio get instance => _dio;

  CustomDio.withAuthentication() {
    _dio = Dio();
    //_dio.options.baseUrl = BASE_URL;
    _dio.interceptors.add(CustomIntercetors());
  }

}