import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';

class HomePremiumCard extends StatelessWidget {
  const HomePremiumCard({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: AppColors.premiumBackground,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Assets.images.mail.image(
              width: 40.w,
              height: 40.w,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locale.home.premium.title,
                    style: AppTextStyles.bodyLarge().copyWith(
                      fontSize: 12.sp,
                      foreground: Paint()
                        ..shader = AppColors.premiumGoldGradient1.createShader(
                          const Rect.fromLTWH(0, 0, 200, 21),
                        ),
                      fontWeight: FontWeight.w700,
                      height: (21 / 16).sp,
                      shadows: [
                        const BoxShadow(
                          color: Color(0x52000000),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    locale.home.premium.subtitle,
                    style: AppTextStyles.bodySmall().copyWith(
                      fontSize: 10.sp,
                      foreground: Paint()
                        ..shader = AppColors.premiumGoldGradient2.createShader(
                          const Rect.fromLTWH(0, 0, 200, 16),
                        ),
                      fontWeight: FontWeight.w400,
                      height: 1.sp,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.premiumGold,
              size: 24.r,
            ),
          ],
        ),
      ),
    );
  }
}
