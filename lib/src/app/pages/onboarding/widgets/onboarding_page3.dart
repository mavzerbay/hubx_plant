import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.onboarding.page3.background.path,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            left: 50.w,
            right: 50.w,
            bottom: -45.h,
            child: Assets.images.onboarding.page3.flatIphone.image(),
          ),
          Positioned(
            top: 100.h,
            right: 20.w,
            child: Assets.images.onboarding.page3.plantCards.image(
              width: 130.w,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            right: 105.w,
            top: 80.h,
            child: Assets.images.onboarding.spray.image(
              width: 75.sp,
            ),
          ),
          Positioned(
            right: 0,
            top: 110.h,
            child: Assets.images.onboarding.sun.image(
              width: 75.sp,
            ),
          ),
          Positioned(
            bottom: -40.h,
            right: 0,
            left: 0,
            child: Container(
              height: 0.3.sh,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    context.colorScheme.onPrimary,
                    context.colorScheme.onPrimary.withOpacityX(0.53),
                    context.colorScheme.onPrimary.withOpacityX(0.1),
                  ],
                  stops: const [
                    0.0,
                    0.2,
                    0.6,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
