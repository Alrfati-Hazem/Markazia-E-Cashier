import 'package:json_annotation/json_annotation.dart';
part 'branch_service_update_request.g.dart';

@JsonSerializable(createFactory: false)
class UpdateBranchServiceRequest {
  final int branchId;
  final int serviceId;
  final bool isEnabled;

  UpdateBranchServiceRequest({
    required this.branchId,
    required this.serviceId,
    required this.isEnabled,
  });

  Map<String, dynamic> toJson() => _$UpdateBranchServiceRequestToJson(this);
}
