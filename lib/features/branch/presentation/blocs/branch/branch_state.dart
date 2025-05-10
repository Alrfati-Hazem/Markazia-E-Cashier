part of 'branch_cubit.dart';

@freezed
abstract class BranchState with _$BranchState {
  factory BranchState({
    BaseStatus? status,
    @Default([]) List<Branch> branches,
    Branch? selectedBranch,
  }) = _BranchState;
}
