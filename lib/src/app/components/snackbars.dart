import 'package:flutter/material.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

class Snackbars {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> success(
    BuildContext context,
    String message, {
    String? title,
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title ?? locale.snackbars.success,
      context,
      message,
      duration,
      Icons.check_circle,
      const Color(0xFF4CAF50),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> info(
    BuildContext context,
    String message, {
    String? title,
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title ?? locale.snackbars.info,
      context,
      message,
      duration,
      Icons.info_outline,
      const Color(0xFF2196F3),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> error(
    BuildContext context,
    String message, {
    String? title,
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title ?? locale.snackbars.error,
      context,
      message,
      duration,
      Icons.error_outline,
      const Color(0xFFE53935),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> warning(
    BuildContext context,
    String message, {
    String? title,
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title ?? locale.snackbars.warning,
      context,
      message,
      duration,
      Icons.warning_amber_rounded,
      const Color(0xFFFF9800),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> show(
    BuildContext context,
    String message, {
    String title = 'Info',
    Duration? duration,
    IconData iconData = Icons.info,
    Color backgroundColor = const Color(0xff17a2b8),
  }) {
    final snackbar = _buildSnackbar(
      title,
      context,
      message,
      duration,
      iconData,
      backgroundColor,
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static SnackBar _buildSnackbar(
    String title,
    BuildContext context,
    String message,
    Duration? duration,
    IconData iconData,
    Color backgroundColor,
  ) {
    return SnackBar(
      content: Row(
        children: [
          Icon(
            iconData,
            size: 24,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  message,
                  style: context.textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      duration: duration ?? const Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
