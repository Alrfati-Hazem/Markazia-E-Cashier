import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../networks/dio_client.dart';
import '../networks/retrofit_client.dart';
import '../routes/app_router.dart';

@module
abstract class AppServiceModel {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  Dio get dio => DioClient.createDio();

  @lazySingleton
  RetrofitClient get retrofitClient => RetrofitClient(dio);

  @preResolve
  Future<SharedPreferencesWithCache> get sharedPreferences =>
      SharedPreferencesWithCache.create(
        cacheOptions: SharedPreferencesWithCacheOptions(),
      );

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
