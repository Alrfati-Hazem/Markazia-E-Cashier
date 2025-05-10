import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
import 'app_button_style.dart';
import 'app_input_style.dart';
import 'app_text_style.dart';

final appTheme = ThemeData(
  fontFamily: FontFamily.encodeSans,
  textTheme: appTextTheme,
  elevatedButtonTheme: appElevatedButtonTheme,
  outlinedButtonTheme: appOutlinedButtonTheme,
  inputDecorationTheme: inputDecorationTheme,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {TargetPlatform.android: PredictiveBackPageTransitionsBuilder()},
  ),
  switchTheme: SwitchThemeData(
    trackColor: WidgetStateProperty.resolveWith<Color>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.selected)) {
        return Color(0xFFCECECE);
      }
      return Colors.white.withValues(alpha: 0.2);
    }),
    thumbColor: WidgetStateProperty.resolveWith<Color>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return Color(0xFFCECECE).withValues(alpha: 0.85);
    }),
    trackOutlineWidth: WidgetStatePropertyAll(1.w),
    trackOutlineColor: WidgetStatePropertyAll(Color(0xFF626262)),
  ),
);
