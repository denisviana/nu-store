import 'package:dio/dio.dart';

class DioClient {

  final Dio _dio;

  DioClient(this._dio);

  Future<T?> delete<T>(
      String path, {
        required String data,
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? headers,
        Map<String, dynamic>? extra,
      }) async {
    final res = await _dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }

  Future<T?> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? headers,
        Map<String, dynamic>? extra,
        ProgressCallback? onReceiveProgress,
      }) async {
    final res = await _dio.get<T>(
      path,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }

  Future<T?> patch<T>(
      String path, {
        required String data,
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? headers,
        Map<String, dynamic>? extra,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    final res = await _dio.patch<T>(
      path,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }

  Future<T?> post<T>(
      String path, {
        required String data,
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? headers,
        Map<String, dynamic>? extra,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    final res = await _dio.post<T>(
      path,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }

  Future<T?> put<T>(
      String path, {
        required String data,
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? headers,
        Map<String, dynamic>? extra,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    final res = await _dio.put<T>(
      path,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }
}
