import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomIntercetors extends InterceptorsWrapper {
  int _maxCharactersPerLine = 200;

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
    (response.data as Map<String, Object>).forEach((key, value) {
      if (key.toUpperCase().contains('DATA') && value != null) {
        try {
          var data = DateFormat('yy-MM-ddThh:mm:ss.SS-Z').parse(value);
          response.data[key] = data.millisecondsSinceEpoch;
        } catch (e) {
          print(e);
        }
      }
    });
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print("<-- Error -->");
    print(err.error);
    print(err.message);
    return super.onError(err);
  }
}
