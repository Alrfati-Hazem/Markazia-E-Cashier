import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponse {
  final String accessToken;

  LoginResponse({required this.accessToken});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
