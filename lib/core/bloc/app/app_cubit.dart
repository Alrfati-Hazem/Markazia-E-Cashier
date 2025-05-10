import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  void updateisEndDrawerOpen(bool value) =>
      emit(state.copyWith(isEndDrawerOpen: value));
}
