// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchSettingsResponse _$BranchSettingsResponseFromJson(
  Map<String, dynamic> json,
) => BranchSettingsResponse(
  branchId: (json['branchId'] as num?)?.toInt(),
  branchNameEn: json['branchNameEn'] as String?,
  branchNameAr: json['branchNameAr'] as String?,
  services:
      (json['services'] as List<dynamic>?)
          ?.map(
            (e) => BranchSettingsServiceResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

BranchSettingsServiceResponse _$BranchSettingsServiceResponseFromJson(
  Map<String, dynamic> json,
) => BranchSettingsServiceResponse(
  serviceId: (json['serviceId'] as num?)?.toInt(),
  serviceNameEn: json['serviceNameEn'] as String?,
  serviceNameAr: json['serviceNameAr'] as String?,
  isEnabled: json['isEnabled'] as bool?,
);
