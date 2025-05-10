import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/services/app_preferences.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/widgets/app_base_screen.dart';
import '../blocs/branch/branch_cubit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      child: Expanded(
        child: Column(
          children: [
            64.verticalSpace,
            _ListTile(
              titleText: "Service Controls",
              onTap: () => context.router.push(BranchServicesRoute()),
            ),
            _ListTile(
              titleText: "Branch Selection",
              onTap:
                  () =>
                      context.router.push(ChooseBranchRoute(isLoggedIn: true)),
            ),
            _ListTile(
              titleText: "Sign Out",
              onTap: () {
                getIt<AppPreferences>().deleteAccessToken();
                context.read<BranchCubit>().selectBranch(null);
                context.router.replaceAll([
                  ChooseBranchRoute(),
                ], updateExistingRoutes: false);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  final String titleText;
  final Function() onTap;
  const _ListTile({required this.titleText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: AppColors.textPrimary.withValues(alpha: 0.8),
            ),
          ),
        ),
        child: ListTile(
          minTileHeight: 0,
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 48.w,
            vertical: 58.w,
          ),
          title: Text(titleText, style: AppTextStyles.textPrimary_S32_W500),
          dense: true,
          onTap: onTap,
        ),
      ),
    );
  }
}
