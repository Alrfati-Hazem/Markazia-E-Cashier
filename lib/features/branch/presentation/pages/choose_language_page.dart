import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_style.dart';
import '../../../../core/widgets/app_base_screen.dart';
import '../../../../core/widgets/app_bottom_container.dart';

@RoutePage()
class ChooseLanguagePage extends StatelessWidget {
  const ChooseLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      withMenuIcon: true,
      child: Expanded(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Please choose the language",
                style: AppTextStyles.textPrimary_S42_W500,
                textAlign: TextAlign.center,
              ),
              56.verticalSpace,
              Text(
                "الرجاء اختيار اللغة ",
                style: AppTextStyles.textPrimary_S42_W500,
                textAlign: TextAlign.center,
              ),
              72.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("English")),
                  32.horizontalSpace,
                  ElevatedButton(onPressed: () {}, child: Text("العربية")),
                ],
              ),
              Spacer(),
              AppBottomContainer(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: OutlinedButton(
                    onPressed: context.router.pop,
                    child: Text("Back"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
