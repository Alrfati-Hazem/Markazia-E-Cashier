// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
import 'app_colors.dart';

TextTheme get appTextTheme {
  return Typography.englishLike2021
      .merge(Typography.blackRedwoodCity)
      .apply(
        decorationColor: AppColors.textPrimary,
        bodyColor: AppColors.textPrimary,
        displayColor: AppColors.textPrimary,
        fontFamily: FontFamily.encodeSans,
      );
}

abstract class AppTextStyles {
  static TextStyle get textPrimary_S50_W500 => TextStyle(
    fontSize: 50.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle get textPrimary_S42_W500 => TextStyle(
    fontSize: 42.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle get textPrimary_S38_W500 => TextStyle(
    fontSize: 38.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle get textPrimary_S34_W400 => TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static TextStyle get textPrimary_S32_W500 => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle get textPrimary_S30_W400 => TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static TextStyle get textPrimary_S28_W500 => TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle get textSecondary_S28_W400 => TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
}
