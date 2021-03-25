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
    // print(
    //     "<-- ${response.statusCode} ${response.request.method} ${response.request.path}");
    // String responseAsString = response.data.toString();
    // if (responseAsString.length > _maxCharactersPerLine) {
    //   int iterations =
    //       (responseAsString.length / _maxCharactersPerLine).floor();
    //   for (int i = 0; i <= iterations; i++) {
    //     int endingIndex = i * _maxCharactersPerLine + _maxCharactersPerLine;
    //     if (endingIndex > responseAsString.length) {
    //       endingIndex = responseAsString.length;
    //     }
    //     print(
    //         responseAsString.substring(i * _maxCharactersPerLine, endingIndex));
    //   }
    // } else {
    //   print(response.data);
    // }
    // print("<-- END HTTP");

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
