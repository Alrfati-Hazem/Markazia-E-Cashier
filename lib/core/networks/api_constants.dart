import 'package:dio/dio.dart';

import '../bloc/data/data_cubit.dart';
import '../config/app_config.dart';
import '../di/injection.dart';
import '../services/app_preferences.dart';
import 'api_response.dart';

class DioConstants {
  static final String baseUrl = AppConfig.shared.baseUrl;

  static final BaseOptions defaultOptions = BaseOptions(
    baseUrl: DioConstants.baseUrl,
    headers: {
      Headers.contentTypeHeader: Headers.jsonContentType,
      Headers.acceptHeader: Headers.jsonContentType,
    },
  );

  static List<Interceptor> defaultInterceptors = [
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final appPreferences = getIt<AppPreferences>();
        options.headers['Authorization'] =
            "Bearer ${await appPreferences.accessToken}";

        handler.next(options);
      },
      onError: (DioException error, handler) {
        final errorMsg = extractErrorMsg(error);
        triggerDataEvent(errorMsg, true);
        return handler.next(error);
      },
    ),
  ];
}
