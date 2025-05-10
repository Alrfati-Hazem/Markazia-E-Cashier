import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomContainer extends StatelessWidget {
  final Widget child;
  const AppBottomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 48.w),
      child: child,
    );
  }
}
