import 'package:blink/app/repositories/dio/custom_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

@Injectable()
class CustomDIO extends DioForNative {
  CustomDIO([BaseOptions options]) : super(options) {
    interceptors.add(CustomIntercetors());
  }
}
