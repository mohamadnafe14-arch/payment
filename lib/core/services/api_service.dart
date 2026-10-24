import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response<dynamic>> post({
    required String url,
    required String token,
    String? contentType,
    required Map<String, dynamic> body,
    Map<String, dynamic>? headers,
  }) async {
    try {
      return await _dio.post<dynamic>(
        url,
        data: body,
        options: Options(
          contentType: contentType ?? 'application/x-www-form-urlencoded',
          headers: {'Authorization': 'Bearer $token', ...?headers},
        ),
      );
    } on DioException catch (e) {
      log('URL: $url');
      log('Status Code: ${e.response?.statusCode}');
      log('Stripe Error: ${e.response?.data}');
      rethrow;
    }
  }
}
