import 'package:json_annotation/json_annotation.dart';

part 'branch_settings_response.g.dart';

@JsonSerializable(createToJson: false)
class BranchSettingsResponse {
  final int? branchId;
  final String? branchNameEn;
  final String? branchNameAr;
  final List<BranchSettingsServiceResponse>? services;
  BranchSettingsResponse({
    this.branchId,
    this.branchNameEn,
    this.branchNameAr,
    this.services,
  });
  factory BranchSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$BranchSettingsResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class BranchSettingsServiceResponse {
  final int? serviceId;
  final String? serviceNameEn;
  final String? serviceNameAr;
  final bool? isEnabled;

  BranchSettingsServiceResponse({
    this.serviceId,
    this.serviceNameEn,
    this.serviceNameAr,
    this.isEnabled,
  });
  factory BranchSettingsServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$BranchSettingsServiceResponseFromJson(json);
}
