import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> geSearchData(
      {required String searchKey}) async {
    var response = await dio.get('${_baseUrl}volumes?q=$searchKey+intitle',);
    return response.data;
  }
}
