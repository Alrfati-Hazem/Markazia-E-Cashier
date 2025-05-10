import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/networks/api_response.dart';
import '../../../../../core/state/base_status.dart';
import '../../../domain/entities/branch.dart';
import '../../../domain/usecases/get_branches_use_case.dart';

part 'branch_state.dart';
part 'branch_cubit.freezed.dart';

@injectable
class BranchCubit extends Cubit<BranchState> {
  final GetBranchesUseCase _getBranchesUseCase;
  BranchCubit(this._getBranchesUseCase) : super(BranchState());

  Branch? tempBranch;

  Future<List<Branch>> getBranches() async {
    final response = await _getBranchesUseCase();
    switch (response) {
      case ApiResultSuccess(:var data):
        final branches = data ?? [];
        emit(state.copyWith(status: BaseStatusSuccess(), branches: branches));
        return branches;
      case ApiResultFailure():
        emit(state.copyWith(status: BaseStatusFailure()));
        return [];
    }
  }

  void selectBranch(Branch? branch) {
    emit(state.copyWith(selectedBranch: branch));
  }

  void selectTempBranch(Branch? branch) {
    tempBranch = branch;
  }
}
