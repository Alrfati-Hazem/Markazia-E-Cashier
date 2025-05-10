import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../../data/models/requests/branch_service_update_request.dart';
import '../repositories/branc_repository.dart';

@lazySingleton
class UpdateBranchServiceUseCase {
  final BrancRepository _brancRepository;

  UpdateBranchServiceUseCase(this._brancRepository);

  Future<ApiResult> call(
    UpdateBranchServiceRequest updateBranchServiceRequest,
  ) async {
    return await _brancRepository.updateBranchService(
      updateBranchServiceRequest,
    );
  }
}
