import 'package:dio/dio.dart';

class ApiService {
  final _dio = Dio();
  Future<Response> post({
    required String url,
    required String token,
    required String? contentType
  })async{
    final response = await _dio.post(
      url,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': contentType ?? 'application/json'
        }
      )
    );
    return response;
  }
}