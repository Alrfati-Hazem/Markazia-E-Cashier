import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class AppTextFormField extends StatelessWidget {
  final String? label;
  final Widget? customLabel;
  final bool? readOnly;
  final bool? obscureText;
  final bool? enableSuggestions;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? enabled;
  final bool? filled;
  final Color? fillColor;
  final InputBorder? disabledBorder;
  final String? initialValue;
  final String? hintText;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final TextStyle? style;
  final void Function(String?)? onChanged;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final Key? textFormkey;
  final int? maxLength;
  final EdgeInsetsGeometry? contentPadding;
  final Iterable<String>? autofillHints;
  final FocusNode? focusNode;
  const AppTextFormField({
    super.key,
    this.label,
    this.customLabel,
    this.suffixIcon,
    this.prefixIcon,
    this.textEditingController,
    this.validator,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.obscureText,
    this.enableSuggestions,
    this.textInputAction,
    this.onFieldSubmitted,
    this.enabled,
    this.filled,
    this.fillColor,
    this.disabledBorder,
    this.initialValue,
    this.keyboardType,
    this.style,
    this.textFormkey,
    this.hintText,
    this.maxLines = 1,
    this.maxLength,
    this.contentPadding,
    this.autofillHints,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ..._buildLabel(label!),
        TextFormField(
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimary,
          ),
          focusNode: focusNode,
          textInputAction: textInputAction ?? TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: contentPadding,
            suffixIcon: suffixIcon,
            filled: filled,
            fillColor: fillColor,
            hintText: hintText,
            prefixIcon: prefixIcon,
          ),
          obscureText: obscureText ?? false,
          enableSuggestions: enableSuggestions ?? true,
          cursorWidth: 1.7.w,
          cursorHeight: 32.w,
          cursorColor: AppColors.textPrimary,
          readOnly: (readOnly ?? false),
          controller: textEditingController,
          validator: validator,
          onTap: onTap,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          enabled: enabled ?? true,
          initialValue: initialValue,
          keyboardType: keyboardType,
          maxLines: maxLines,
          maxLength: maxLength,
          autofillHints: autofillHints,
        ),
      ],
    );
  }

  List<Widget> _buildLabel(String label) {
    return [
      Text(label, style: AppTextStyles.textPrimary_S38_W500),
      32.verticalSpace,
    ];
  }
}
