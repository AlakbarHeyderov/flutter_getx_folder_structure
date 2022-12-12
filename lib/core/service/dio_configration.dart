import 'package:dio/dio.dart';

import 'jwt_interceptor.dart';

final clientDio = Dio()
  ..options = BaseOptions(
    baseUrl: 'base url',
  )
  ..interceptors.add(JwtInterceptor());
