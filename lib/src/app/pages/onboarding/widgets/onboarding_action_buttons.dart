import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';
import 'package:hubx/src/shared/extensions/context_extension.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

class OnboardingActionButtons extends StatelessWidget {
  const OnboardingActionButtons({
    required this.currentPage,
    required this.totalPages,
    super.key,
    this.onNext,
    this.showTerms = false,
  });

  final int currentPage;
  final int totalPages;
  final VoidCallback? onNext;
  final bool showTerms;

  bool get isLastPage => currentPage == totalPages - 1;
  bool get isFirstPage => currentPage == 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          // Action button
          SizedBox(
            width: double.infinity,
            height: 56.h,
            child: ElevatedButton(
              onPressed: onNext,
              style: ElevatedButton.styleFrom(
                foregroundColor: context.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                elevation: 0,
              ),
              child: Text(
                isFirstPage
                    ? locale.onboarding.getStarted
                    : locale.global.kContinue,
                style: AppTextStyles.buttonLarge(),
              ),
            ),
          ),

          // Terms and Privacy (only on first page)
          if (showTerms && isFirstPage) ...[
            SizedBox(height: 24.h),
            Text.rich(
              locale.onboarding.termsText(
                terms: (p0) => TextSpan(
                  text: p0,
                  style: AppTextStyles.bodySmall().copyWith(
                    decoration: TextDecoration.underline,
                    fontSize: 11.sp,
                    height: 15 / 11.sp,
                  ),
                  // Add the onTap gesture for terms
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.navigator.showInfoSnackBar('Test');
                    },
                ),
                privacy: (p0) => TextSpan(
                  text: p0,
                  style: AppTextStyles.bodySmall().copyWith(
                    decoration: TextDecoration.underline,
                    fontSize: 11.sp,
                    height: 15 / 11.sp,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.navigator.showInfoSnackBar('Test');
                    },
                ),
              ),
              textAlign: TextAlign.center,
              style: AppTextStyles.bodySmall().copyWith(
                color: AppColors.plantSecondaryGreen.withOpacityX(0.7),
                fontSize: 11.sp,
                height: 15 / 11.sp,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
