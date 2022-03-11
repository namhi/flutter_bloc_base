import 'package:dio/dio.dart';
import 'package:flutter_bloc_base/data/remote/rest_client.dart';

class RestClientImpl implements RestClient {
  RestClientImpl({
    String? baseUrl,
    Dio? dio,
    String? authenticationToken,
  }) {
    _dio = dio ??
        Dio(
          BaseOptions().copyWith(
            baseUrl: baseUrl,
            contentType: 'application/json',
          ),
        );
  }
  late final Dio _dio;
  String? _authenticationToken;

  /// Provides a get method.
  Future<dynamic> httpGet(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get(
      path,
      queryParameters: queryParameters,
    );
  }

  /// Provides a post method.
  Future<dynamic> httpPost(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) {
    return _dio.post(
      path,
      queryParameters: queryParameters,
      data: data,
    );
  }

  /// Provides a delete method.
  Future<dynamic> httpDelete(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) {
    return _dio.delete(
      path,
      queryParameters: queryParameters,
      data: data,
    );
  }
}
