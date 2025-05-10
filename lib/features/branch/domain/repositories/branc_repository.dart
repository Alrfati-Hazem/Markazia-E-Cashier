import '../../../../core/networks/api_response.dart';
import '../../data/models/requests/branch_service_update_request.dart';
import '../entities/branch.dart';
import '../entities/branch_settings.dart';

abstract class BrancRepository {
  Future<ApiResult<List<Branch>>> getBranches();
  Future<ApiResult<BranchSettings>> getSettingsBybranchId(int branchId);
  Future<ApiResult> updateBranchService(
    UpdateBranchServiceRequest updateBranchServiceRequest,
  );
}
