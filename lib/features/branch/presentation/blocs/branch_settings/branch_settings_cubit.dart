import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/networks/api_response.dart';
import '../../../../../core/state/base_status.dart';
import '../../../data/models/requests/branch_service_update_request.dart';
import '../../../domain/entities/branch_settings.dart';
import '../../../domain/usecases/get_branch_settings_use_case.dart';
import '../../../domain/usecases/update_branch_service_use_case.dart';

part 'branch_settings_state.dart';
part 'branch_settings_cubit.freezed.dart';

@injectable
class BranchSettingsCubit extends Cubit<BranchSettingsState> {
  final GetBranchSettingsUseCase _getBranchSettingsUseCase;
  final UpdateBranchServiceUseCase _updateBranchServiceUseCase;

  final Map<int, bool> _updatedServicesStatus = {};

  BranchSettingsCubit(
    this._getBranchSettingsUseCase,
    this._updateBranchServiceUseCase,
  ) : super(BranchSettingsState());

  void getBranchSettings(int branchId) async {
    emit(state.copyWith(status: BaseStatusLoading()));

    final response = await _getBranchSettingsUseCase(branchId);
    switch (response) {
      case ApiResultSuccess(:var data):
        emit(state.copyWith(status: BaseStatusSuccess(), branchSettings: data));
      case ApiResultFailure():
        emit(state.copyWith(status: BaseStatusFailure()));
    }
  }

  void updateTempServiceStatus(int serviceId, bool newValue) {
    final List<BranchSettingsService> oldServices = List.from(
      state.branchSettings?.services ?? [],
    );
    _updatedServicesStatus[serviceId] = newValue;
    emit(
      state.copyWith(
        branchSettings: state.branchSettings?.copyWith(
          services:
              oldServices
                  .map(
                    (e) =>
                        e.serviceId == serviceId
                            ? e.copyWith(isEnabled: newValue)
                            : e,
                  )
                  .toList(),
        ),
      ),
    );
  }

  Future<void> confirmUpdateServiceStatus(int branchId) async {
    final futures =
        _updatedServicesStatus.entries.map((entry) {
          return _updateBranchServiceUseCase(
            UpdateBranchServiceRequest(
              branchId: branchId,
              serviceId: entry.key,
              isEnabled: entry.value,
            ),
          );
        }).toList();
    emit(state.copyWith(status: BaseStatusLoading(), isAction: true));
    final response = await Future.wait(futures);
    final isFailure = response.any((element) => element is ApiResultFailure);
    if (isFailure) {
      emit(state.copyWith(status: BaseStatusFailure()));
    } else {
      if (!isClosed) emit(state.copyWith(status: BaseStatusSuccess()));
    }
  }
}
