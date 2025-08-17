import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

class HomePlantCategoryCard extends StatelessWidget {
  const HomePlantCategoryCard({
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.current.primaryColor.withOpacityX(0.2),
            width: 0.5,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.plantWhite,
              AppColors.plantWhite.withOpacityX(0.8),
            ],
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.grey.shade50,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CachedNetworkImage(
                  imageUrl: imageAsset,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => ColoredBox(
                    color: Colors.grey.shade50,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.of(context).primaryColor,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                  errorWidget: (context, error, stackTrace) {
                    return ColoredBox(
                      color: Colors.grey.shade50,
                      child: Center(
                        child: Icon(
                          Icons.local_florist,
                          size: 32.r,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Positioned(
              top: 16.h,
              left: 16.w,
              child: SizedBox(
                width: 0.35.sw,
                child: Text(
                  title,
                  style: TextStyle(
                    color: context.colorScheme.onSurface,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        color: AppColors.current.cardColor,
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
