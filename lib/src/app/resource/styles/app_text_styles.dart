import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';

/// AppTextStyle format as follows:
/// s[fontSize][fontWeight][Color]
/// Example: s18w400Primary

class AppTextStyles {
  AppTextStyles._();
  static const _defaultLetterSpacing = 0.0;

  static final _baseTextStyle = TextStyle(
    fontFamily: 'Roboto',
    letterSpacing: _defaultLetterSpacing,
    locale: Locale(LocaleSettings.currentLocale.languageCode),
  );

  static TextStyle headlineLarge() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.current.primaryTextColor,
    ),
  );
  static TextStyle headlineMedium() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.current.primaryTextColor,
    ),
  );
  static TextStyle headlineSmall() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.current.primaryTextColor,
    ),
  );
  static TextStyle bodyLarge() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.current.primaryTextColor,
    ),
  );
  static TextStyle bodyMedium() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.current.secondaryTextColor,
    ),
  );
  static TextStyle bodySmall() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.current.secondaryTextColor,
    ),
  );
  static TextStyle buttonLarge() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.current.surfaceColor,
    ),
  );
  static TextStyle buttonSmall() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.current.surfaceColor,
    ),
  );
  static TextStyle labelLarge() => _baseTextStyle.merge(
    TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.current.primaryTextColor,
    ),
  );
}
