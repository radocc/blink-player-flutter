import 'package:blink/app/shared/custom_dio/custom_dio.dart';
import 'package:dio/dio.dart';
import 'package:moor_flutter/moor_flutter.dart';

class LoginRepository{

  final Dio dio;

  LoginRepository({@required this.dio});
 
    Future<int> postServer(String data) async {
    try {
    var response = await dio.post('/rest', data: data.toString());
    return response.data;
    } on DioError catch (e) {
      throw (e.message);
    }

  }

}