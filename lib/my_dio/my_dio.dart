import 'dart:io';
import 'package:dio/dio.dart';
import 'package:jobify/my_dio/response_model.dart';

class MyDio {
  static Dio dio;
  void init() {
    dio = Dio(BaseOptions(baseUrl: "https://cprs2022.herokuapp.com/"));
  }

  static Future<ResponseModel> postData(String path, {myModel}) async {
    try {
      // dio.options.headers = {
      //   "Content-Type": "application/json",
      // };

      final response = await dio.post(path, data: myModel);
      return ResponseModel(error: false, data: response);
    } on DioError catch (e) {
      if (e.type == DioErrorType.other) {
        return ResponseModel(
          error: true,
          errorMessage: "Weak Internet Connection",
        );
      }

      print(e.response.data);

      return ResponseModel(
        error: true,
        errorMessage: e.response.data["detail"],
      );
    } on SocketException catch (e) {
      return ResponseModel(error: true, errorMessage: "No Internet Connection");
    }
  }

  static Future<ResponseModel> getData(String path, {myModel}) async {
    try {
      final response = await dio.get(path);
      return ResponseModel(error: false, data: response);
    } on DioError catch (e) {
      if (e.type == DioErrorType.other) {
        return ResponseModel(
          error: true,
          errorMessage: "Weak Internet Connection",
        );
      }
      print(e.response.data);

      return ResponseModel(
        error: true,
        errorMessage: e.response.data["detail"],
      );
    } on SocketException catch (e) {
      return ResponseModel(
        error: true,
        errorMessage: "No Internet Connection",
      );
    }
  }
}
