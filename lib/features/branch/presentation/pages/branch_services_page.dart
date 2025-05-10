import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/state/base_status.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/app_base_screen.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/entities/branch_settings.dart';
import '../blocs/branch/branch_cubit.dart';
import '../blocs/branch_settings/branch_settings_cubit.dart';

final servicesIconMapper = {
  "SparePartsOrder": Assets.icons.spareParts.path,
  "ServiceOrder": Assets.icons.service.path,
  "VehicleOrder": Assets.icons.vehicle.path,
  "PromissoryNote": Assets.icons.dollar.path,
};

@RoutePage()
class BranchServicesPage extends StatelessWidget {
  const BranchServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedBranchId =
        context.read<BranchCubit>().state.selectedBranch!.id;
    return BlocProvider(
      create:
          (context) =>
              getIt<BranchSettingsCubit>()..getBranchSettings(selectedBranchId),
      lazy: false,
      child: Builder(
        builder: (ctx) {
          return BlocListener<BranchSettingsCubit, BranchSettingsState>(
            listenWhen:
                (previous, current) =>
                    previous.status != current.status && current.isAction,
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
                  context.router.pop();
                  break;
                default:
              }
            },
            child: AppBaseScreen(
              child: Expanded(
                child: BlocBuilder<BranchSettingsCubit, BranchSettingsState>(
                  buildWhen: (previous, current) => !current.isAction,
                  builder: (ctx, state) {
                    switch (state.status) {
                      case BaseStatusLoading():
                        return Center(
                          child: SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: CircularProgressIndicator(
                              strokeWidth: 8.w,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        );

                      case BaseStatusSuccess():
                        final services = state.branchSettings?.services;
                        return Column(
                          children: [
                            36.verticalSpace,
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: services?.length,
                              itemBuilder:
                                  (context, index) =>
                                      _ListTile(service: services![index]),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 48.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  OutlinedButton(
                                    onPressed: context.router.pop,
                                    child: Text("Back"),
                                  ),
                                  ElevatedButton(
                                    onPressed:
                                        () async => await ctx
                                            .read<BranchSettingsCubit>()
                                            .confirmUpdateServiceStatus(
                                              selectedBranchId,
                                            ),
                                    child: Text("Confirm"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      default:
                        return Column(
                          children: [
                            Spacer(),
                            Center(
                              child: Text(
                                "Something Went Wrong!\nPlease Try Again",
                                style: AppTextStyles.textPrimary_S50_W500,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 48.w),
                              child: Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: OutlinedButton(
                                  onPressed: context.router.pop,
                                  child: Text("Back"),
                                ),
                              ),
                            ),
                          ],
                        );
                    }
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  final BranchSettingsService service;
  const _ListTile({required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 48.w, end: 88.w),
      padding: EdgeInsets.symmetric(vertical: 40.w),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.4,
            color: AppColors.textPrimary.withValues(alpha: 0.8),
          ),
        ),
      ),
      child: SwitchListTile(
        value: service.isEnabled,
        onChanged: (value) {
          context.read<BranchSettingsCubit>().updateTempServiceStatus(
            service.serviceId,
            value,
          );
        },
        contentPadding: EdgeInsets.all(0.w),
        title: Row(
          children: [
            Image.asset(
              servicesIconMapper[service.serviceNameEn] ?? "",
              height: 100.w,
              errorBuilder:
                  (context, error, stackTrace) => Icon(
                    Icons.warning,
                    color: AppColors.textPrimary,
                    size: 70.w,
                  ),
            ),
            24.horizontalSpace,
            Text(
              service.serviceNameEn,
              style: AppTextStyles.textPrimary_S32_W500,
            ),
          ],
        ),
        dense: true,
      ),
    );
  }
}
