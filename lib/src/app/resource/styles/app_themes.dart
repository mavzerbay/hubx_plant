import 'package:flutter/material.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';

/// define custom themes here
final ThemeData lightTheme =
    ThemeData.light().copyWith(
      brightness: Brightness.light,
      splashColor: Colors.transparent,
      cardColor: AppColors.light.cardColor,
      scaffoldBackgroundColor: AppColors.light.backgroundColor,
      textTheme: ThemeData.light().textTheme.apply(
        fontFamily: 'Roboto',
        bodyColor: AppColors.light.primaryTextColor,
        displayColor: AppColors.light.primaryTextColor,
      ),
      iconTheme: IconThemeData(
        color: AppColors.light.primaryColor,
      ),
      colorScheme: ColorScheme.light(
        primary: AppColors.light.primaryColor,
        secondary: AppColors.light.secondaryColor,
        surface: AppColors.light.surfaceColor,
        error: AppColors.light.errorColor,
        onPrimary: AppColors.light.surfaceColor,
        onSecondary: AppColors.light.surfaceColor,
        onSurface: AppColors.light.primaryTextColor,
        onError: AppColors.light.surfaceColor,
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.light.cardColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.light.primaryColor,
        ),
      ),
      listTileTheme: ListTileThemeData(
        selectedTileColor: AppColors.light.primaryColor,
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty<Color?>.fromMap(
          <WidgetStatesConstraint, Color?>{
            WidgetState.selected: AppColors.light.primaryColor,
            ~WidgetState.disabled: AppColors.light.passiveColor,
          },
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty<Color?>.fromMap(
          <WidgetStatesConstraint, Color?>{
            WidgetState.selected: AppColors.light.primaryTextColor,
            WidgetState.hovered & WidgetState.focused:
                AppColors.light.primaryColor,
            WidgetState.focused: AppColors.light.primaryColor,
            ~WidgetState.disabled: AppColors.light.passiveColor,
          },
        ),
        trackColor: WidgetStateProperty.fromMap(
          <WidgetStatesConstraint, Color?>{
            WidgetState.hovered & WidgetState.focused: AppColors
                .light
                .secondaryColor
                .withOpacityX(0.5),
          },
        ),
        trackOutlineColor: WidgetStateProperty.all(
          AppColors.light.primaryColor.withOpacityX(0.5),
        ),
        trackOutlineWidth: WidgetStateProperty.all(1),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.light.cardColor,
        selectedItemColor: AppColors.light.primaryTextColor,
        unselectedItemColor: AppColors.light.passiveColor,
        selectedIconTheme: IconThemeData(
          color: AppColors.light.primaryTextColor,
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.light.passiveColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.light.primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.light.primaryColor,
          side: BorderSide(
            color: AppColors.light.primaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          iconColor: AppColors.light.primaryColor,
        ),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(
          color: AppColors.light.primaryTextColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.light.cardColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            color: AppColors.light.passiveColor.withValues(
              alpha: 0.6,
            ),
          ),
        ),
        menuStyle: MenuStyle(
          backgroundColor: WidgetStateColor.fromMap(
            <WidgetStatesConstraint, Color>{
              WidgetState.hovered: AppColors.light.cardColor,
              WidgetState.focused: AppColors.light.cardColor,
              ~WidgetState.disabled: AppColors.light.cardColor.withValues(
                alpha: 0.9,
              ),
            },
          ),
          shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
            (states) => const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
    )..addAppColor(
      AppThemeType.light,
      AppColors.light,
    );

final ThemeData darkTheme =
    ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      splashColor: Colors.transparent,
      cardColor: AppColors.dark.cardColor,
      scaffoldBackgroundColor: AppColors.dark.backgroundColor,
      textTheme: ThemeData.dark().textTheme.apply(
        fontFamily: 'Roboto',
        bodyColor: AppColors.dark.primaryTextColor,
        displayColor: AppColors.dark.primaryTextColor,
      ),
      iconTheme: IconThemeData(
        color: AppColors.dark.primaryColor,
      ),
      colorScheme: ColorScheme.dark(
        primary: AppColors.dark.primaryColor,
        secondary: AppColors.dark.secondaryColor,
        surface: AppColors.dark.surfaceColor,
        error: AppColors.dark.errorColor,
        onPrimary: AppColors.dark.surfaceColor,
        onSecondary: AppColors.dark.surfaceColor,
        onSurface: AppColors.dark.primaryTextColor,
        onError: AppColors.dark.surfaceColor,
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.dark.cardColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.dark.primaryColor,
        ),
      ),
      listTileTheme: ListTileThemeData(
        selectedTileColor: AppColors.dark.primaryColor,
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty<Color?>.fromMap(
          <WidgetStatesConstraint, Color?>{
            WidgetState.selected: AppColors.dark.primaryColor,
            ~WidgetState.disabled: AppColors.dark.passiveColor,
          },
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty<Color?>.fromMap(
          <WidgetStatesConstraint, Color?>{
            WidgetState.selected: AppColors.dark.primaryTextColor,
            WidgetState.hovered & WidgetState.focused:
                AppColors.dark.primaryColor,
            WidgetState.focused: AppColors.dark.primaryColor,
            ~WidgetState.disabled: AppColors.dark.passiveColor,
          },
        ),
        trackColor: WidgetStateProperty.fromMap(
          <WidgetStatesConstraint, Color?>{
            WidgetState.hovered & WidgetState.focused:
                AppColors.dark.secondaryColor,
          },
        ),
        trackOutlineColor: WidgetStateProperty.all(
          AppColors.dark.primaryColor.withOpacityX(0.5),
        ),
        trackOutlineWidth: WidgetStateProperty.all(1),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.dark.primaryColor,
        selectedIconTheme: IconThemeData(
          color: AppColors.dark.primaryTextColor,
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.dark.passiveColor,
        ),
        selectedItemColor: AppColors.dark.primaryTextColor,
        unselectedItemColor: AppColors.dark.passiveColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.dark.primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.dark.primaryTextColor,
          side: BorderSide(
            color: AppColors.dark.primaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          iconColor: AppColors.dark.primaryTextColor,
        ),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(
          color: AppColors.dark.primaryTextColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.dark.cardColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            color: AppColors.dark.passiveColor.withValues(
              alpha: 0.6,
            ),
          ),
        ),
        menuStyle: MenuStyle(
          backgroundColor: WidgetStateColor.fromMap(
            <WidgetStatesConstraint, Color>{
              WidgetState.hovered: AppColors.dark.cardColor,
              WidgetState.focused: AppColors.dark.cardColor,
              ~WidgetState.disabled: AppColors.dark.cardColor.withValues(
                alpha: 0.9,
              ),
            },
          ),
          shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
            (states) => const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
    )..addAppColor(
      AppThemeType.dark,
      AppColors.dark,
    );

enum AppThemeType { light, dark }

extension ThemeDataExtensions on ThemeData {
  static final Map<AppThemeType, AppColors> _appColorMap = {};

  void addAppColor(AppThemeType type, AppColors appColor) {
    _appColorMap[type] = appColor;
  }

  AppColors get appColor {
    return _appColorMap[AppThemeSetting.currentAppThemeType] ?? AppColors.light;
  }
}

class AppThemeSetting {
  const AppThemeSetting._();
  static AppThemeType currentAppThemeType = AppThemeType.light;
}
