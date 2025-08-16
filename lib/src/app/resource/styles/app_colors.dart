import 'package:flutter/material.dart';

// App-wide color definitions for light and dark themes
class AppColors {
  const AppColors({
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundColor,
    required this.surfaceColor,
    required this.cardColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.passiveColor,
    required this.successColor,
    required this.errorColor,
    required this.warningColor,
    required this.infoColor,
  });

  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;
  final Color surfaceColor;
  final Color cardColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color passiveColor;
  final Color successColor;
  final Color errorColor;
  final Color warningColor;
  final Color infoColor;

  static late AppColors current;

  // PlantApp brand colors (Figma)
  static const Color plantGreen = Color(0xFF28AF6E);
  static const Color plantDarkGreen = Color(0xFF388E3C);
  static const Color plantLightGreen = Color(0xFFC8E6C9);
  static const Color plantSecondaryGreen = Color(0xFF597165);
  static const Color plantWhite = Color(0xFFFFFFFF);
  static const Color plantBackground = Color(0xFFFBFAFA);
  static const Color plantCard = Color(0xFFF4F6F6);
  static const Color plantGray = Color(0xFFBDBDBD);
  static const Color plantDarkGray = Color(0xFF616161);
  static const Color plantError = Color(0xFFD32F2F);
  static const Color plantWarning = Color(0xFFFFA000);
  static const Color plantInfo = Color(0xFF1976D2);

  static const Color premiumBackground = Color(0xFF24201A);
  static const Color premiumGold = Color(0xFFD9A846);
  static const LinearGradient premiumGoldGradient1 = LinearGradient(
    colors: [Color(0xFFE5C990), Color(0xFFE4B046)],
  );
  static const LinearGradient premiumGoldGradient2 = LinearGradient(
    colors: [Color(0xFFFFDE9C), Color(0xFFF5C25B)],
  );

  static const Color textFieldBorderColor = Color(0x3C3C4340);

  // Light theme
  static const AppColors light = AppColors(
    primaryColor: plantGreen,
    secondaryColor: plantDarkGreen,
    backgroundColor: plantBackground,
    surfaceColor: plantWhite,
    cardColor: plantCard,
    primaryTextColor: Color(0xFF13231B),
    secondaryTextColor: Color(0xB213231B),
    passiveColor: plantGray,
    successColor: plantGreen,
    errorColor: plantError,
    warningColor: plantWarning,
    infoColor: plantInfo,
  );

  // Dark theme
  static const AppColors dark = AppColors(
    primaryColor: plantGreen,
    secondaryColor: plantLightGreen,
    backgroundColor: Color(0xFF181A20),
    surfaceColor: Color(0xFF23262F),
    cardColor: Color(0xFF23262F),
    primaryTextColor: plantWhite,
    secondaryTextColor: plantGray,
    passiveColor: plantDarkGray,
    successColor: plantGreen,
    errorColor: plantError,
    warningColor: plantWarning,
    infoColor: plantInfo,
  );

  // Sets the current colors according to theme
  static void init(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    current = isDark ? dark : light;
  }

  // Returns the colors for the current context
  static AppColors of(BuildContext context) {
    init(context);
    return current;
  }
}
