part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({BaseStatus? status}) = _AuthState;
}
