import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomIntercetors extends InterceptorsWrapper {
  int _maxCharactersPerLine = 200;
  RegExp exp_DateTime = RegExp(
      r'^([+-]?\d?\d\d)-?(\d\d)-?(\d\d)(?:[ T](\d\d)(?::?(\d\d)(?::?(\d\d)(.\d{1,6})?)?)? ?([zZ])?)?$');

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
    if (response.data is List<int>) {
      return super.onResponse(response);
    } else if (response.data is List) {
      (response.data as List).forEach((item) {
        readMap(item);
      });
    } else if (response.data is Map) {
      readMap(response.data);
    }

    return super.onResponse(response);
  }

  readMap(Map<String, Object> map) {
    map.forEach((key, value) {
      if (value != null) {
        try {
          var data = DateFormat('yy-MM-ddThh:mm:ss.SS-Z').parse(value);
          map[key] = data.millisecondsSinceEpoch;
        } catch (e) {
          try {
            var time = DateFormat('hh:mm:ss').parse(value);
            map[key] = time.millisecondsSinceEpoch;
          } catch (e) {}
        }
      }
    });
  }

  @override
  Future onError(DioError err) {
    print("<-- Error -->");
    print(err.error);
    print(err.message);
    return super.onError(err);
  }
}
