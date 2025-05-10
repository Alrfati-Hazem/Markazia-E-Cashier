import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';

void showAppLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder:
        (context) => Center(
          child: SizedBox(
            height: 150.w,
            width: 150.w,
            child: CircularProgressIndicator(
              strokeWidth: 8.w,
              color: AppColors.textPrimary,
            ),
          ),
        ),
  );
}
