import 'package:dio/dio.dart';


Dio dio() {
  Dio dio = Dio ();
  dio.options.baseUrl="http://192.168.1.25:5000/api";
  dio.options.headers['Accept']='application/json';

  return dio;
}