import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/src/app/resource/constants/device_constants.dart';

class AppDimen {
  const AppDimen({
    required this.screenWidth,
    required this.screenHeight,
    required this.devicePixelRatio,
    required this.screenType,
  });

  static late AppDimen current;

  final double screenWidth;
  final double screenHeight;
  final double devicePixelRatio;
  final ScreenType screenType;

  /// Using a static method instead of a constructor
  /// for context-based initialization.
  /// ignore: prefer_constructors_over_static_methods
  static AppDimen of(BuildContext context) {
    assert(debugCheckHasMediaQuery(context), 'No MediaQuery widget found.');

    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(context);

    final screen = AppDimen(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      devicePixelRatio: devicePixelRatio,
      screenType: _getScreenType(screenWidth),
    );

    return current = screen;
  }

  double responsiveDimens({
    required double mobile,
    double? tablet,
    double? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobile.w;
      case ScreenType.tablet:
        return tablet?.w ??
            ((mobile * DeviceConstants.maxMobileWidth) /
                DeviceConstants.designDeviceWidth);
      case ScreenType.ultraTablet:
        return ultraTablet?.w ??
            ((mobile * DeviceConstants.maxMobileWidth) /
                DeviceConstants.designDeviceWidth);
    }
  }

  int responsiveIntValue({
    required int mobile,
    int? tablet,
    int? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobile;
      case ScreenType.tablet:
        return tablet ?? mobile;
      case ScreenType.ultraTablet:
        return ultraTablet ?? mobile;
    }
  }

  static ScreenType _getScreenType(double screenWidth) {
    if (screenWidth <= DeviceConstants.maxMobileWidth) {
      return ScreenType.mobile;
    } else if (screenWidth <= DeviceConstants.maxTabletWidth) {
      return ScreenType.tablet;
    } else {
      return ScreenType.ultraTablet;
    }
  }
}

extension ResponsiveNumExtension on num {
  double responsive({
    double? tablet,
    double? ultraTablet,
  }) {
    return AppDimen.current.responsiveDimens(
      mobile: toDouble(),
      tablet: tablet,
      ultraTablet: ultraTablet,
    );
  }
}

enum ScreenType {
  mobile,
  tablet,
  ultraTablet,
}
