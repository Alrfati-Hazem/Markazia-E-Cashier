import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';
import '../bloc/app/app_cubit.dart';
import '../bloc/data/data_cubit.dart';
import '../routes/app_router.gr.dart';
import '../theme/app_text_style.dart';
import '../utils/snackbar.dart';

class AppBaseScreen<TBloc extends Cubit<TState>, TState>
    extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? endDrawer;
  final bool isTopSafeArea;
  final bool isBottomSafeArea;
  final bool withMenuIcon;

  const AppBaseScreen({
    super.key,
    required this.child,
    this.appBar,
    this.endDrawer,
    this.isTopSafeArea = true,
    this.isBottomSafeArea = true,
    this.withMenuIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _buildBody(context),
      endDrawer: endDrawer ?? _buildEndDrawer(),
      onEndDrawerChanged: context.read<AppCubit>().updateisEndDrawerOpen,
      endDrawerEnableOpenDragGesture: false,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24.w),
      constraints: BoxConstraints(
        minHeight: MediaQuery.sizeOf(context).height,
        minWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.bg.path),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        top: isTopSafeArea,
        bottom: isBottomSafeArea,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: _buildBlocListener(child),
        ),
      ),
    );
  }

  MultiBlocListener _buildBlocListener(Widget child) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DataCubit, DataState>(
          listener: (context, state) {
            switch (state) {
              case DataFailure(:var message):
                showSnackBar(context, message, SnackBarStatus.failure);
                break;
              case DataSuccess(:var message):
                showSnackBar(context, message, SnackBarStatus.success);
                break;
              default:
            }
          },
        ),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Builder(
            builder: (context) {
              return Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      30.verticalSpace,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          135.horizontalSpace,
                          38.horizontalSpace,
                          Spacer(),
                          Hero(
                            tag: "logo",
                            child: Center(
                              child: SvgPicture.asset(
                                Assets.images.logo.path,
                                height: 100.w,
                              ),
                            ),
                          ),
                          Spacer(),
                          Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: withMenuIcon,
                            child: IconButton(
                              onPressed: Scaffold.of(context).openEndDrawer,
                              icon: SvgPicture.asset(
                                Assets.icons.menu.path,
                                height: 70.w,
                              ),
                            ),
                          ),
                          38.horizontalSpace,
                        ],
                      ),
                      child,
                    ],
                  ),
                  if (state.isEndDrawerOpen)
                    Container(
                      width: double.infinity,
                      color: Color(0xFF1A1A1A).withValues(alpha: 0.6),
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildEndDrawer() {
    return Builder(
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top + 28.w,
          ),
          width: MediaQuery.sizeOf(context).width * 0.64,
          decoration: BoxDecoration(
            color: Color(0xFF1A1A1A),
            boxShadow: [
              BoxShadow(
                blurRadius: 20.r,
                spreadRadius: 3.r,
                color: Colors.white.withValues(alpha: 0.06),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IconButton(
                    onPressed: Scaffold.of(context).closeEndDrawer,
                    icon: SvgPicture.asset(
                      Assets.icons.cancel.path,
                      height: 35.w,
                    ),
                  ),
                ),
              ),
              28.verticalSpace,
              SvgPicture.asset(Assets.images.logo.path, height: 100.w),
              70.verticalSpace,
              Material(
                color: Colors.transparent,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 24.w,
                    horizontal: 64.w,
                  ),
                  title: Row(
                    children: [
                      Image.asset(Assets.icons.settings.path, height: 80.w),
                      12.horizontalSpace,
                      Text(
                        "Kiosk Settings",
                        style: AppTextStyles.textPrimary_S34_W400,
                      ),
                    ],
                  ),
                  dense: true,
                  onTap: () {
                    Scaffold.of(context).closeEndDrawer();
                    context.router.push(LoginRoute());
                  },
                ),
              ),
              Spacer(),
              Text(
                "Check for updates",
                style: AppTextStyles.textPrimary_S28_W500.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              16.verticalSpace,
              Text(
                "Version 24.08.1",
                style: AppTextStyles.textSecondary_S28_W400,
              ),
              64.verticalSpace,
            ],
          ),
        );
      },
    );
  }
}
