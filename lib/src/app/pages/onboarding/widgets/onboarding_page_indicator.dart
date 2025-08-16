import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({
    required this.currentPage,
    required this.totalPages,
    super.key,
  });

  final int currentPage;
  final int totalPages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        _buildIndicator,
      ),
    );
  }

  Widget _buildIndicator(int index) {
    final isActive = index == currentPage - 1;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: isActive ? 10.sp : 6.sp,
      height: isActive ? 10.sp : 6.sp,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.current.primaryTextColor
            : AppColors.current.primaryTextColor.withOpacityX(0.3),
        shape: BoxShape.circle,
      ),
    );
  }
}
