import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/requests/login_request.dart';
import '../models/responses/login_response.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource);

  @override
  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) async {
    return await _authRemoteDataSource.login(loginRequest);
  }
}
