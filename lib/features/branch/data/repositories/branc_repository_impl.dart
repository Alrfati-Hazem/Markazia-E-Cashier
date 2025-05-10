import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../../domain/entities/branch.dart';
import '../../domain/entities/branch_settings.dart';
import '../../domain/repositories/branc_repository.dart';
import '../datasources/branch_remote_data_source.dart';
import '../models/requests/branch_service_update_request.dart';

@LazySingleton(as: BrancRepository)
class BrancRepositoryImpl implements BrancRepository {
  final BranchRemoteDataSource _branchRemoteDataSource;

  BrancRepositoryImpl(this._branchRemoteDataSource);

  @override
  Future<ApiResult<List<Branch>>> getBranches() async {
    final result = await _branchRemoteDataSource.getBranches();
    switch (result) {
      case ApiResultSuccess(:var data):
        final entityList =
            data?.map((response) => Branch.fromResponse(response)).toList();
        return ApiResultSuccess(entityList);

      case ApiResultFailure(:var error):
        return ApiResultFailure(error);
    }
  }

  @override
  Future<ApiResult<BranchSettings>> getSettingsBybranchId(int branchId) async {
    final result = await _branchRemoteDataSource.getSettingsBybranchId(
      branchId,
    );
    switch (result) {
      case ApiResultSuccess(:var data):
        final entity = BranchSettings.fromResponse(data);
        return ApiResultSuccess(entity);

      case ApiResultFailure(:var error):
        return ApiResultFailure(error);
    }
  }

  @override
  Future<ApiResult> updateBranchService(
    UpdateBranchServiceRequest updateBranchServiceRequest,
  ) async {
    return await _branchRemoteDataSource.updateBranchService(
      updateBranchServiceRequest,
    );
  }
}
