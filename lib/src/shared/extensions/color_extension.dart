import 'package:flutter/material.dart';

extension OpacityExtension on Color {
  Color withOpacityX(double opacity) {
    return withValues(alpha: opacity);
  }
}
