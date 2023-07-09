import 'dart:convert';
import 'package:my_navigationbar/models/api_response.dart';

ApiResponse<T> parseJson<T>(String jsonString, Function fromJsonT) {
  final jsonData = json.decode(jsonString);
  return ApiResponse.fromJson(jsonData, fromJsonT);
}
