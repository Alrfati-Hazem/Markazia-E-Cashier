import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../../../../core/networks/retrofit_client.dart';
import '../models/requests/branch_service_update_request.dart';
import '../models/responses/branch_response.dart';
import '../models/responses/branch_settings_response.dart';

abstract class BranchRemoteDataSource {
  Future<ApiResult<List<BranchResponse>>> getBranches();
  Future<ApiResult<BranchSettingsResponse>> getSettingsBybranchId(int branchId);
  Future<ApiResult> updateBranchService(
    UpdateBranchServiceRequest updateBranchServiceRequest,
  );
}

@LazySingleton(as: BranchRemoteDataSource)
class BranchRemoteDataSourceImp implements BranchRemoteDataSource {
  final RetrofitClient retrofitClient;

  BranchRemoteDataSourceImp({required this.retrofitClient});

  @override
  Future<ApiResult<List<BranchResponse>>> getBranches() {
    return apiHandler(() => retrofitClient.getBranches());
  }

  @override
  Future<ApiResult<BranchSettingsResponse>> getSettingsBybranchId(
    int branchId,
  ) {
    return apiHandler(() => retrofitClient.getSettingsBybranchId(branchId));
  }

  @override
  Future<ApiResult> updateBranchService(
    UpdateBranchServiceRequest updateBranchServiceRequest,
  ) {
    return apiHandler(
      () => retrofitClient.updateBranchService(updateBranchServiceRequest),
    );
  }
}
