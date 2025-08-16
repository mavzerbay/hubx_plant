import 'package:flutter/material.dart';
import 'package:hubx/gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(
      height: height ?? 80,
      width: width ?? 80,
      fit: BoxFit.contain,
    );
  }
}
