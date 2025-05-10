import 'package:injectable/injectable.dart';

import '../../../../core/networks/api_response.dart';
import '../entities/branch.dart';
import '../repositories/branc_repository.dart';

@lazySingleton
class GetBranchesUseCase {
  final BrancRepository _brancRepository;

  GetBranchesUseCase(this._brancRepository);

  Future<ApiResult<List<Branch>>> call() async {
    return await _brancRepository.getBranches();
  }
}
