import '../../data/models/responses/branch_response.dart';

class Branch {
  final int id;
  final String branchNameEn;
  final String branchNameAr;
  final List<Service> services;

  Branch({
    required this.id,
    required this.branchNameEn,
    required this.branchNameAr,
    required this.services,
  });

  factory Branch.fromResponse(BranchResponse? res) => Branch(
    id: res?.id ?? -1,
    branchNameEn: res?.branchNameEn ?? "",
    branchNameAr: res?.branchNameAr ?? "",
    services:
        res?.services
            ?.map((service) => Service.fromResponse(service))
            .toList() ??
        [],
  );
}

class Service {
  final int id;
  final String nameEn;
  final String nameAr;

  Service({required this.id, required this.nameEn, required this.nameAr});

  factory Service.fromResponse(ServiceResponse? res) => Service(
    id: res?.id ?? -1,
    nameEn: res?.nameEn ?? "",
    nameAr: res?.nameAr ?? "",
  );
}
