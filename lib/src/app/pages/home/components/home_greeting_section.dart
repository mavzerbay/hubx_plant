import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';

class HomeGreetingSection extends StatelessWidget {
  const HomeGreetingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppColors.of(context);
    return Container(
      height: 0.23.sh,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.searchBackground.path),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.current.passiveColor.withOpacityX(0.1),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.plantWhite.withValues(alpha: 0.15),
                    AppColors.plantWhite.withValues(alpha: 0.05),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locale.home.greeting.hiPlantLover,
                  style: AppTextStyles.bodySmall(),
                ),
                SizedBox(height: 4.h),
                Text(
                  locale.home.greeting.goodAfternoon,
                  style: AppTextStyles.headlineMedium().copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const Spacer(),

                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: locale.home.searchPlaceholder,
                    hintStyle: AppTextStyles.bodyMedium().copyWith(
                      fontFamily: 'Rubik',
                      color: AppColors.current.passiveColor,
                      letterSpacing: 0.07,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 10.w),
                      child: Icon(
                        Icons.search_rounded,
                        color: AppColors.current.passiveColor,
                        size: 22.r,
                      ),
                    ),
                    fillColor: AppColors.current.surfaceColor.withOpacityX(
                      0.75,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: AppColors.textFieldBorderColor.withOpacityX(
                          0.25,
                        ),
                        width: 0.2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: AppColors.textFieldBorderColor.withOpacityX(
                          0.25,
                        ),
                        width: 0.2,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 12.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
