import 'package:blink/app/shared/custom_dio/custom_dio.dart';
import 'package:dio/dio.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepository {
  final Dio dio;

  LoginRepository({@required this.dio});

  Future<int> postServer(String uuid) async {
    try {
      var response = await dio.post('/rest', data: uuid).then((value) async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('nome', value.data['nome']);
        await prefs.setString('horaInicio', value.data['horaInicio']);
        await prefs.setString('horaFim', value.data['horaFim']);
        await prefs.setString('orientacao', value.data['orientacao']);
        await prefs.setString('token', value.data['token']);
      });
      return response.data;
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}
