import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
    super.key,
    this.onPressed,
    this.size = 44,
    this.iconSize = 22,
    this.color = Colors.white,
    this.backgroundColor,
  });

  final VoidCallback? onPressed;
  final double size;
  final double iconSize;
  final Color color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.w,
      height: size.h,
      margin: EdgeInsets.only(left: 16.w, top: 8.h, bottom: 8.h),
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            AppColors.current.primaryTextColor.withOpacityX(0.1),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withOpacityX(0.2),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(size / 2),
          onTap: onPressed ?? () => context.router.maybePop(),
          child: Center(
            child: Icon(
              Icons.arrow_back_rounded,
              size: iconSize.sp,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
