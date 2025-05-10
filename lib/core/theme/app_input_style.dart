import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
import 'app_colors.dart';

InputDecorationTheme get inputDecorationTheme {
  final enabledOutlinedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.textPrimary, width: 1.w),
    borderRadius: BorderRadius.all(Radius.circular(16.r)),
  );

  return InputDecorationTheme(
    errorBorder: enabledOutlinedInputBorder,
    focusedErrorBorder: enabledOutlinedInputBorder,
    focusedBorder: enabledOutlinedInputBorder,
    disabledBorder: enabledOutlinedInputBorder,
    enabledBorder: enabledOutlinedInputBorder,
    border: enabledOutlinedInputBorder,
    contentPadding: EdgeInsets.all(32.w),
    isDense: true,
    hintStyle: TextStyle(
      fontSize: 32.sp,
      fontFamily: FontFamily.encodeSans,
      color: AppColors.inputHintText,
      fontWeight: FontWeight.w400,
    ),
  );
}
