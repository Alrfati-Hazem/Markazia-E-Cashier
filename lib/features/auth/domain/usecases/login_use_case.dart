import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../../data/models/requests/login_request.dart';
import '../../data/models/responses/login_response.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<ApiResult<LoginResponse>> call(LoginRequest loginRequest) async {
    return await _authRepository.login(loginRequest);
  }
}
