import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/networks/api_response.dart';
import '../../../../../core/services/app_preferences.dart';
import '../../../../../core/state/base_status.dart';
import '../../../data/models/requests/login_request.dart';
import '../../../data/models/responses/login_response.dart';
import '../../../domain/usecases/login_use_case.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase _loginUseCase;
  final AppPreferences _appPreferences;
  AuthCubit(this._loginUseCase, this._appPreferences) : super(AuthState());

  final formKey = GlobalKey<FormState>();
  final employeeController = TextEditingController();
  final passwordController = TextEditingController();
  final employeeFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  void _clearController() {
    employeeController.text = "";
    passwordController.text = "";
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      emit(state.copyWith(status: BaseStatusLoading()));
      final response = await _loginUseCase(
        LoginRequest(
          username: employeeController.text,
          password: passwordController.text,
        ),
      );
      switch (response) {
        case ApiResultFailure<LoginResponse>():
          emit(state.copyWith(status: BaseStatusFailure()));
        case ApiResultSuccess<LoginResponse>(:var data):
          _appPreferences.setAccessToken(data!.accessToken);
          _clearController();
          emit(state.copyWith(status: BaseStatusSuccess()));
      }
    }
  }

  @override
  Future<void> close() {
    employeeController.dispose();
    passwordController.dispose();
    employeeFocusNode.dispose();
    passwordFocusNode.dispose();
    return super.close();
  }
}
