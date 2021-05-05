import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RadioLifeInterceptor {

  static InterceptorsWrapper init(Dio dio, String language, FlutterSecureStorage flutterSecureStorage)=> InterceptorsWrapper(
        onRequest: (RequestOptions options, handler) async {
          final token = await flutterSecureStorage.read(key: 'token');
          final headers = <String,String>{};
          if(!options.headers.containsKey('Authorization') && token != null && token.isNotEmpty)
            headers['Authorization'] = 'Bearer $token';
          options.headers.addAll(headers);
          handler.next(options);
        },
    );
  
}