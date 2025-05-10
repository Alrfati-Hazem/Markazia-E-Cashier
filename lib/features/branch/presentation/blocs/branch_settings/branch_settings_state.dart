part of 'branch_settings_cubit.dart';

@freezed
abstract class BranchSettingsState with _$BranchSettingsState {
  const factory BranchSettingsState({
    BaseStatus? status,
    BranchSettings? branchSettings,
    @Default(false) bool isAction,
  }) = _BranchSettingsState;
}
