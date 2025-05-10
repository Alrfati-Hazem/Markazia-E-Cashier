import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/widgets/app_base_screen.dart';
import '../../../../core/widgets/app_bottom_container.dart';
import '../../../../core/widgets/app_transform_flip_y.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/entities/branch.dart';
import '../blocs/branch/branch_cubit.dart';

@RoutePage()
class ChooseBranchPage extends StatelessWidget {
  final bool isLoggedIn;
  const ChooseBranchPage({super.key, this.isLoggedIn = false});

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      withMenuIcon: false,
      child: Expanded(
        child: BlocBuilder<BranchCubit, BranchState>(
          builder: (context, state) {
            final branchCubit = context.read<BranchCubit>();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 88.w),
                  child: Column(
                    children: [
                      Text(
                        "Please choose the branch",
                        style: AppTextStyles.textPrimary_S38_W500,
                      ),
                      64.verticalSpace,
                      DropdownSearch<Branch>(
                        selectedItem: state.selectedBranch,
                        compareFn: (p0, p1) => p0 == p1,
                        decoratorProps: DropDownDecoratorProps(
                          baseStyle: AppTextStyles.textPrimary_S30_W400,
                          decoration: InputDecoration(
                            hintText: "Choose Value",
                            hintStyle: TextStyle(
                              fontSize: 32.sp,
                              color: AppColors.inputHintText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        suffixProps: DropdownSuffixProps(
                          dropdownButtonProps: DropdownButtonProps(
                            iconClosed: SvgPicture.asset(
                              Assets.icons.dropdownBottomArrow.path,
                              height: 20.w,
                            ),
                            iconOpened: AppTransformFlipY(
                              child: SvgPicture.asset(
                                Assets.icons.dropdownBottomArrow.path,
                                height: 20.w,
                              ),
                            ),
                          ),
                        ),
                        onChanged:
                            isLoggedIn
                                ? branchCubit.selectTempBranch
                                : branchCubit.selectBranch,
                        items: (filter, loadProps) async {
                          final branches =
                              state.branches.isEmpty
                                  ? await branchCubit.getBranches()
                                  : state.branches;
                          return branches;
                        },
                        itemAsString:
                            (item) =>
                                "${item.branchNameEn} ${item.services.isEmpty ? "" : "(${item.services.map((service) => service.nameEn).join(" and ")})"}",
                        popupProps: PopupProps.menu(
                          emptyBuilder:
                              (context, searchEntry) => Center(
                                child: Text(
                                  "No Branches are available\nPlease Try Again",
                                  style: AppTextStyles.textPrimary_S50_W500,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                          errorBuilder:
                              (context, searchEntry, exception) => Center(
                                child: Text(
                                  "Something Went Wrong!\nPlease Try Again",
                                  style: AppTextStyles.textPrimary_S50_W500,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                          loadingBuilder:
                              (context, searchEntry) => Center(
                                child: SizedBox(
                                  height: 120.w,
                                  width: 120.w,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 8.w,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                          itemBuilder: (context, item, isDisabled, isSelected) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 33.w,
                                horizontal: 16.w,
                              ),
                              child: Text(
                                "${item.branchNameEn} ${item.services.isEmpty ? "" : "(${item.services.map((service) => service.nameEn).join(" and ")})"}",
                                style: AppTextStyles.textPrimary_S30_W400,
                              ),
                            );
                          },
                          menuProps: MenuProps(
                            popUpAnimationStyle: AnimationStyle.noAnimation,
                            backgroundColor: Color(0xFF1A1A1A),
                            margin: EdgeInsets.only(top: 16.w),
                          ),
                          scrollbarProps: ScrollbarProps(
                            radius: Radius.circular(11.r),
                            trackVisibility: true,
                            thumbVisibility: true,
                            thumbColor: AppColors.textPrimary,
                            thickness: 8.w,
                            trackRadius: Radius.circular(11.r),
                            trackColor: Colors.white.withValues(alpha: 0.1),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 12.w,
                            ),
                          ),
                          constraints: BoxConstraints(maxHeight: 600.w),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AppBottomContainer(
                  child:
                      isLoggedIn
                          ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  branchCubit.selectTempBranch(null);
                                  context.router.pop();
                                },
                                child: Text("Back"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  branchCubit.selectBranch(
                                    branchCubit.tempBranch,
                                  );
                                  branchCubit.selectTempBranch(null);
                                  context.router.pop();
                                },
                                child: Text("Confrim"),
                              ),
                            ],
                          )
                          : Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Visibility(
                              visible: state.selectedBranch != null,
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              child: ElevatedButton(
                                onPressed:
                                    () => context.router.push(
                                      ChooseLanguageRoute(),
                                    ),
                                child: Text("Sign In"),
                              ),
                            ),
                          ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
