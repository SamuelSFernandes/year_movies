import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class HttpClient {
  final Dio _dio;

  HttpClient({required Dio dio}) : _dio = dio;

  Future<Response> get(String endpoint, {Map<String, dynamic>? query}) {
    return _dio.get(
      endpoint,
      queryParameters: query,
      options: Options(sendTimeout: 10000),
    );
  }
}
