import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/state/base_status.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/app_base_screen.dart';
import '../../../../core/widgets/app_bottom_container.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../blocs/auth/auth_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    return AppBaseScreen(
      child: Expanded(
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            switch (state.status) {
              case BaseStatusLoading():
                showAppLoadingDialog(context);
                break;
              case BaseStatusFailure():
                context.router.pop();
                break;
              case BaseStatusSuccess():
                context.router.pop();
                context.router.push(HomeRoute());
                break;
              default:
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Form(
                key: authCubit.formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 172.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextFormField(
                        label: "Employee Number",
                        hintText: "Enter employee number ",
                        textEditingController: authCubit.employeeController,
                        focusNode: authCubit.employeeFocusNode,
                        onFieldSubmitted: (p0) {
                          authCubit.employeeFocusNode.unfocus();
                          FocusScope.of(
                            context,
                          ).requestFocus(authCubit.passwordFocusNode);
                        },
                        validator: (p0) {
                          if (p0 == null || p0.trim().isEmpty) {
                            return "This is field is required";
                          }
                          return null;
                        },
                      ),
                      56.verticalSpace,
                      AppTextFormField(
                        label: "Password",
                        hintText: "Enter password",
                        textEditingController: authCubit.passwordController,
                        focusNode: authCubit.passwordFocusNode,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (p0) {
                          authCubit.passwordFocusNode.unfocus();
                        },
                        obscureText: true,
                        validator: (p0) {
                          if (p0 == null || p0.trim().isEmpty) {
                            return "This is field is required";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              AppBottomContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: context.router.pop,
                      child: Text("Back"),
                    ),
                    ElevatedButton(
                      onPressed: authCubit.login,
                      child: Text("Confirm"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
