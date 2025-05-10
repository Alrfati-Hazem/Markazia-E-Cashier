part of 'app_cubit.dart';

@freezed
abstract class AppState with _$AppState {
  factory AppState({@Default(false) bool isEndDrawerOpen}) = _AppState;
}
