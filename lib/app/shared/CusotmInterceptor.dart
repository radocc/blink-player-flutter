import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomIntercetorsConteudo extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    var prefs = await SharedPreferences.getInstance();
    var uuid = prefs.get('uuid');
    if (uuid != null) {
      options.headers['uuid'] = uuid;
    }
    options.headers['Content-type'] = 'application/json';
  }

  @override
  Future onResponse(Response response) {
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print("<-- Error Conteudo-->");
    print(err.error);
    print(err.message);
    return super.onError(err);
  }
}
