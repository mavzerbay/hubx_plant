import 'package:flutter/material.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';

// ThemeData için kolay AppColors erişimi
extension AppThemeExtension on ThemeData {
  AppColors get appColors {
    final isDark = brightness == Brightness.dark;
    return isDark ? AppColors.dark : AppColors.light;
  }
}

// BuildContext üzerinden tema ve renk erişimi
extension ContextThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
  bool get isDarkMode => theme.brightness == Brightness.dark;

  // AppColors'ı başlatıp güncel renkleri döndürür
  AppColors get appColors {
    AppColors.init(this);
    return AppColors.current;
  }

  // Sık kullanılan renkler için kısayollar
  Color get primaryColor => appColors.primaryColor;
  Color get backgroundColor => appColors.backgroundColor;
  Color get surfaceColor => appColors.surfaceColor;
  Color get cardColor => appColors.cardColor;
  Color get textPrimary => appColors.primaryTextColor;
  Color get textSecondary => appColors.secondaryTextColor;
  Color get passiveColor => appColors.passiveColor;

  // Durum renkleri
  Color get successColor => appColors.successColor;
  Color get errorColor => appColors.errorColor;
  Color get warningColor => appColors.warningColor;
  Color get infoColor => appColors.infoColor;
}
