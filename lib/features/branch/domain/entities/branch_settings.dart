import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/responses/branch_settings_response.dart';
part 'branch_settings.freezed.dart';

@Freezed(toJson: false, fromJson: false)
abstract class BranchSettings with _$BranchSettings {
  const factory BranchSettings({
    required int branchId,
    required String branchNameEn,
    required String branchNameAr,
    required List<BranchSettingsService> services,
  }) = _BranchSettings;

  factory BranchSettings.fromResponse(BranchSettingsResponse? res) =>
      BranchSettings(
        branchId: res?.branchId ?? -1,
        branchNameEn: res?.branchNameEn ?? "",
        branchNameAr: res?.branchNameAr ?? "",
        services:
            res?.services
                ?.map((s) => BranchSettingsService.fromResponse(s))
                .toList() ??
            [],
      );
}

@Freezed(toJson: false, fromJson: false)
abstract class BranchSettingsService with _$BranchSettingsService {
  const factory BranchSettingsService({
    required int serviceId,
    required String serviceNameEn,
    required String serviceNameAr,
    required bool isEnabled,
  }) = _BranchSettingsService;

  factory BranchSettingsService.fromResponse(
    BranchSettingsServiceResponse? res,
  ) => BranchSettingsService(
    serviceId: res?.serviceId ?? -1,
    serviceNameEn: res?.serviceNameEn ?? "",
    serviceNameAr: res?.serviceNameAr ?? "",
    isEnabled: res?.isEnabled ?? false,
  );
}
