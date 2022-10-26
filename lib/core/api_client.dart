// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<dynamic> login(String email, String password) async {
    try {
      Response response = await _dio.post(
          'https://erp.smartfarm.com.tn/web/session/mobile_authenticate',
          data: {
            'params': {'db': 'smartfarm', 'login': email, 'password': password}
          },
          options: Options(headers: {'Content-Type': 'application/json'}));
      //returns the successful user data json object

      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      print("errrror");
      return e.response?.data;
    }
  }

  // ignore: non_constant_identifier_names
  Future<dynamic> smart_metio(String stationid, String sessionid) async {
    try {
      Response response = await _dio.get(
          'https://erp.smartfarm.com.tn/smart_metio/' +
              stationid +
              '?session_id=' +
              '' +
              sessionid +
              '',
          options:
              Options(headers: {'Content-Type': 'text/html; charset=utf-8'}));
      //returns the successful user data json object

      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      print("errrror");
      return e.response!.data;
    }
  }

  Future<dynamic> smart_hydroponique(String stationid, String sessionid) async {
    try {
      Response response = await _dio.get(
          'https://erp.smartfarm.com.tn/hydroponique/' +
              stationid +
              '?session_id=' +
              '' +
              sessionid +
              '',
          options:
              Options(headers: {'Content-Type': 'text/html; charset=utf-8'}));
      //returns the successful user data json object

      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      print("errrror");
      return e.response!.data;
    }
  }

  Future<dynamic> smart_sensor(String stationid, String sessionid) async {
    try {
      Response response = await _dio.get(
          'https://erp.smartfarm.com.tn/smart_sensor/' +
              stationid +
              '?session_id=' +
              '' +
              sessionid +
              '',
          options:
              Options(headers: {'Content-Type': 'text/html; charset=utf-8'}));
      //returns the successful user data json object

      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      print("errrror");
      return e.response!.data;
    }
  }

  Future<dynamic> smart_sensors(String stationid, String sessionid) async {
    try {
      Response response = await _dio.get(
          'https://erp.smartfarm.com.tn/smart_sensor/1' +
              stationid +
              '?session_id=' +
              '' +
              sessionid +
              '',
          options:
              Options(headers: {'Content-Type': 'text/html; charset=utf-8'}));
      //returns the successful user data json object

      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      print("errrror");
      return e.response!.data;
    }
  }

  Future<dynamic> hydro_temp() async {
    print('ENTERING HYDRO');
    var resp = '';

    try {
      Response response = await _dio.get(
          'http://192.168.1.25:5000/api/capteur/appmobile/smarthydro/temp',
          options: Options(
              headers: {'Content-Type': 'application/json; charset=utf-8'}));
      //returns the successful user data json object
      print('response = ');
      print(response);
      return response.data;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future<dynamic> hydro_lum() async {
    print('ENTERING HYDRO');
    var resp = '';

    try {
      Response response = await _dio.get(
          'http://192.168.1.25:5000/api/capteur/appmobile/smarthydro/lum',
          options: Options(
              headers: {'Content-Type': 'application/json; charset=utf-8'}));
      //returns the successful user data json object
      print('response = ');
      print(response);
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<dynamic> sensor() async {
    print('ENTERING Sensor');
    var resp = '';

    try {
      Response response = await _dio.get(
          'http://192.168.1.25:5000/api/capteur/appmobile/smartsensor',
          options: Options(
              headers: {'Content-Type': 'application/json; charset=utf-8'}));
      //returns the successful user data json object
      print('response = ');
      print(response);
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
