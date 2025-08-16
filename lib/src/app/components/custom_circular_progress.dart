import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/src/app/resource/dimens/app_dimen.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({
    super.key,
    this.loaderTitle,
    this.isFullScreen = false,
  });

  final String? loaderTitle;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8.h,
      children: [
        SizedBox(
          height: 80.responsive(),
          width: 80.responsive(),
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: context.theme.colorScheme.primary,
          ),
        ),
        if (loaderTitle != null && loaderTitle!.isNotEmpty)
          SizedBox(
            height: 0.1.sh,
            child: Text(
              loaderTitle!,
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyMedium(),
            ),
          ),
      ],
    );
  }
}
