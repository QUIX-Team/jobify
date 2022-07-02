import 'package:dio/dio.dart';

class ResponseModel {
  bool error;
  Response data;
  String errorMessage;
  ResponseModel({
    this.error,
    this.data,
    this.errorMessage,
  });
}
