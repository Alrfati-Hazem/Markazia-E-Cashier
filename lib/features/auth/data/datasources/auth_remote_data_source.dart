import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../../../../core/networks/retrofit_client.dart';
import '../models/requests/login_request.dart';
import '../models/responses/login_response.dart';

abstract class AuthRemoteDataSource {
  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  final RetrofitClient retrofitClient;

  AuthRemoteDataSourceImp({required this.retrofitClient});

  @override
  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) {
    return apiHandler(() => retrofitClient.login(loginRequest));
  }
}
