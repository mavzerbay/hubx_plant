import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.formControlName,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.textInputAction,
    this.autoFocus = false,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    super.key,
  });
  final String formControlName;
  final String? labelText;
  final String? hintText;
  final void Function(FormControl<dynamic>)? onChanged;
  final void Function(FormControl<dynamic>)? onSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool autoFocus;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final validationLabel = labelText ?? hintText ?? '';

    return ReactiveTextField(
      formControlName: formControlName,
      autofocus: autoFocus,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.current.primaryTextColor.withOpacityX(0.5),
          fontSize: 12.sp,
        ),
        fillColor: AppColors.current.primaryTextColor.withOpacityX(0.1),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: BorderSide(
            color: AppColors.current.primaryTextColor.withOpacityX(0.2),
            width: 1.r,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: BorderSide(
            color: const Color(0xFFE50914),
            width: 1.r,
          ),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      validationMessages: {
        ValidationMessage.required: (e) => locale.validation.required(
          name: validationLabel,
        ),
        ValidationMessage.minLength: (e) => locale.validation.minLength(
          name: validationLabel,
          min: (e as Map)['requiredLength'].toString(),
        ),
        ValidationMessage.maxLength: (e) => locale.validation.maxLength(
          name: validationLabel,
          max: (e as Map)['requiredLength'].toString(),
        ),
        ValidationMessage.requiredTrue: (e) => locale.validation.requiredTrue(
          name: validationLabel,
        ),
        ValidationMessage.pattern: (e) => locale.validation.pattern(
          name: validationLabel,
        ),
        ValidationMessage.email: (e) => locale.validation.emailIsNotValid,
        'invalidDate': (_) => locale.validation.invalidDate,
        'minDate': (minDate) => locale.validation.minDate(
          name: validationLabel,
          min: minDate,
        ),
        'maxDate': (maxDate) {
          return locale.validation.maxDate(
            name: validationLabel,
            max: maxDate,
          );
        },
      },
    );
  }
}
