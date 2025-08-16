import 'package:flutter/material.dart';
import 'package:hubx/src/app/components/custom_circular_progress.dart';
import 'package:hubx/src/app/resource/dimens/app_dimen.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';

class CustomCircularProgressFullScreen extends StatelessWidget {
  const CustomCircularProgressFullScreen({
    super.key,
    this.loaderTitle,
  });

  final String? loaderTitle;

  @override
  Widget build(BuildContext context) {
    AppDimen.of(context);
    AppColors.of(context);
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.black.withValues(alpha: 0.4),
        body: Card(
          margin: EdgeInsets.zero,
          color: Colors.transparent,
          elevation: 3,
          child: SimpleDialog(
            key: key,
            backgroundColor: Colors.transparent,
            elevation: 0,
            children: <Widget>[
              Center(
                child: CustomCircularProgress(
                  loaderTitle: loaderTitle,
                  isFullScreen: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
