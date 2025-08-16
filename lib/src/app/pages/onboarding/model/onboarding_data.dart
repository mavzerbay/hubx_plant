import 'package:flutter/widgets.dart';

class OnboardingData {
  OnboardingData({
    required this.title,
    required this.child,
    this.subtitle,
  });

  final Widget? title;
  final String? subtitle;
  final Widget child;
}
