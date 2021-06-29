import 'dart:convert';

import 'package:blink/app/shared/constants.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomIntercetors extends InterceptorsWrapper {

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    var prefs = await SharedPreferences.getInstance();
    var uuid = prefs.get('uuid');
    if (uuid != null) {
      options.headers['uuid'] = uuid;
    }
    options.headers['Content-type'] = 'application/json';
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data is String) 
      response.data = jsonDecode(response.data);
    if (response.data is List<int>) {
      handler.next(response);
      return;
    } else if (response.data is List) {
      (response.data as List).forEach((item) {
        readMap(item);
      });
    } else if (response.data is Map) {
      readMap(response.data);
    }

    handler.next(response);
  }

  readMap(Map<String, Object> map) {
    map.forEach((key, value) {
      if (value != null) {
        try {
          if (value is List) {
            value.forEach((element) {
              readMap(element);
            });
          }
          var data = dateFormat.parse(value);
          map[key] = data.millisecondsSinceEpoch;
        } catch (e) {
          try {
            var time = timeFormat.parse(value);
            map[key] = time.millisecondsSinceEpoch;
          } catch (e) {}
        }
      }
    });
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("<-- Error -->");
    print(err.error);
    print(err.message);
    handler.next(err);
  }
}
