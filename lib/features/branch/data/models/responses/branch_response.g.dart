// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchResponse _$BranchResponseFromJson(Map<String, dynamic> json) =>
    BranchResponse(
      id: (json['id'] as num?)?.toInt(),
      branchNameEn: json['branchNameEn'] as String?,
      branchNameAr: json['branchNameAr'] as String?,
      services:
          (json['services'] as List<dynamic>?)
              ?.map((e) => ServiceResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

ServiceResponse _$ServiceResponseFromJson(Map<String, dynamic> json) =>
    ServiceResponse(
      id: (json['id'] as num?)?.toInt(),
      nameEn: json['nameEn'] as String?,
      nameAr: json['nameAr'] as String?,
    );
