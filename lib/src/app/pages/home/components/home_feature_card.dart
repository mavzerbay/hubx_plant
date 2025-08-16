import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

class HomeFeatureCard extends StatelessWidget {
  const HomeFeatureCard({
    required this.title,
    required this.imageAsset,
    required this.onTap,
    super.key,
  });

  final String title;
  final String imageAsset;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 240.w,
        height: 164.h,
        margin: EdgeInsets.only(right: 10.w),
        decoration: BoxDecoration(
          color: AppColors.of(context).surfaceColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.current.surfaceColor.withOpacityX(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: CachedNetworkImage(
                imageUrl: imageAsset,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, error, stackTrace) {
                  return ColoredBox(
                    color: AppColors.of(context).primaryColor.withOpacityX(0.1),
                    child: Icon(
                      Icons.photo,
                      size: 48.r,
                      color: AppColors.of(context).primaryColor,
                    ),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacityX(0.6),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 104.h,
              left: 16.w,
              right: 16.w,
              child: Text(
                title,
                style: AppTextStyles.bodyMedium().copyWith(
                  color: context.colorScheme.onPrimary,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
