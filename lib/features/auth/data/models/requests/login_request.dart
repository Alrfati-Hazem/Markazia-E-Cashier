import 'package:json_annotation/json_annotation.dart';
part 'login_request.g.dart';

@JsonSerializable(createFactory: false)
class LoginRequest {
  final String username;
  final String password;

  LoginRequest({required this.username, required this.password});

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
