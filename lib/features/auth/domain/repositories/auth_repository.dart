import '../../../../core/networks/api_response.dart';
import '../../data/models/requests/login_request.dart';
import '../../data/models/responses/login_response.dart';

abstract class AuthRepository {
  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest);
}
