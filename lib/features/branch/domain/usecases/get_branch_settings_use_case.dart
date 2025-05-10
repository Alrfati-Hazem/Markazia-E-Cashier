import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../entities/branch_settings.dart';
import '../repositories/branc_repository.dart';

@lazySingleton
class GetBranchSettingsUseCase {
  final BrancRepository _brancRepository;

  GetBranchSettingsUseCase(this._brancRepository);

  Future<ApiResult<BranchSettings>> call(int branchId) async {
    return await _brancRepository.getSettingsBybranchId(branchId);
  }
}
