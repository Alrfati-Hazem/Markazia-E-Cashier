import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
import 'app_colors.dart';

ElevatedButtonThemeData get appElevatedButtonTheme {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white.withValues(alpha: 0.1),
      foregroundColor: AppColors.textPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      textStyle: TextStyle(
        fontSize: 38.sp,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.encodeSans,
      ),
      padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 32.w),
    ),
  );
}

OutlinedButtonThemeData get appOutlinedButtonTheme {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.textPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      textStyle: TextStyle(
        fontSize: 38.sp,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.encodeSans,
      ),
      padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 32.w),
      side: BorderSide(width: 1.w, color: AppColors.textPrimary),
    ),
  );
}
