import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// get - Interceptor - request - response
class JwtInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final storage = FlutterSecureStorage();
    final accessToken = await storage.read(key: 'access_token');
    options.headers['Accept'] = 'application/json';
    options.headers['localization'] = 'az';
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    handler.next(options);
  }
}
