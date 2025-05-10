import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_constants.dart';

class DioClient {
  DioClient._();

  static Dio createDio({
    BaseOptions? baseOptions,
    List<Interceptor>? interceptors,
  }) {
    Dio dio = Dio();

    dio.options = baseOptions ?? DioConstants.defaultOptions;
    dio.interceptors.addAll(interceptors ?? DioConstants.defaultInterceptors);

    if (kDebugMode) {
      dio.interceptors.addAll([
        AwesomeDioInterceptor(
          logRequestTimeout: false,
          logRequestHeaders: true,
          logResponseHeaders: true,
        ),
      ]);
    }
    return dio;
  }
}
