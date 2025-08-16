import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Assets.images.onboarding.plant.image(
            width: 0.7.sw,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            top: 0.sh,
            left: 0,
            right: 0,
            child: Assets.images.onboarding.page2.phone.image(
              height: 0.7.sh,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            left: -0.24.sw,
            top: 0.05.sh,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 78.w),
              child: Assets.images.onboarding.page2.scan.image(
                width: 0.75.sw,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
