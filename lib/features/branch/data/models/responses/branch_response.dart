import 'package:json_annotation/json_annotation.dart';

part 'branch_response.g.dart';

@JsonSerializable(createToJson: false)
class BranchResponse {
  final int? id;
  final String? branchNameEn;
  final String? branchNameAr;
  final List<ServiceResponse>? services;
  BranchResponse({
    this.id,
    this.branchNameEn,
    this.branchNameAr,
    this.services,
  });
  factory BranchResponse.fromJson(Map<String, dynamic> json) =>
      _$BranchResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class ServiceResponse {
  final int? id;
  final String? nameEn;
  final String? nameAr;

  ServiceResponse({this.id, this.nameEn, this.nameAr});
  factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);
}
