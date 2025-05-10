import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/requests/login_request.dart';
import '../../features/auth/data/models/responses/login_response.dart';
import '../../features/branch/data/models/requests/branch_service_update_request.dart';
import '../../features/branch/data/models/responses/branch_response.dart';
import '../../features/branch/data/models/responses/branch_settings_response.dart';
import 'api_response.dart';

part 'retrofit_client.g.dart';

@RestApi()
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String baseUrl}) = _RetrofitClient;

  @GET('/Branch/GetBranch')
  Future<ApiResponse<List<BranchResponse>>> getBranches();

  @GET('/Kiosk/GetSettingsBybranchId')
  Future<ApiResponse<BranchSettingsResponse>> getSettingsBybranchId(
    @Query('branchId') int branchId,
  );

  @PUT('/Kiosk/UpdateBranchServiceStatus')
  Future<ApiResponse> updateBranchService(
    @Body() UpdateBranchServiceRequest updateBranchServiceRequest,
  );

  @POST('/Users/loginToken')
  Future<ApiResponse<LoginResponse>> login(@Body() LoginRequest loginRequest);
}
