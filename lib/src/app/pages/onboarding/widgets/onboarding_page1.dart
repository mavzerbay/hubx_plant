import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';

class OnboardingPage1 extends StatefulWidget {
  const OnboardingPage1({super.key});

  @override
  State<OnboardingPage1> createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage1>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation =
        Tween<double>(
          begin: -10,
          end: 10,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );

    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            right: 50.w,
            top: 50.h,
            child: Assets.images.onboarding.sun.image(
              width: 100.sp,
            ),
          ),
          Positioned(
            right: 75.w,
            bottom: 25.h,
            child: Assets.images.onboarding.page1.water.image(
              width: 100.sp,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.w),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.onboarding.plant.path,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 50.w,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _animation.value),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 78.w),
                    child: Assets.images.onboarding.page1.cameraLine.image(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 50.w,
            top: 30.h,
            child: Assets.images.onboarding.spray.image(
              width: 100.sp,
            ),
          ),
        ],
      ),
    );
  }
}
