import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/resource/dimens/app_dimen.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  bool _showLogo = false;
  late AnimationController _fadeController;
  late AnimationController _progressController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _progressController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _fadeAnimation =
        Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: _fadeController,
            curve: Curves.easeInOutQuart,
          ),
        );

    _progressAnimation =
        Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: _progressController,
            curve: Curves.easeInOut,
          ),
        );

    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        _fadeController.forward();
        _progressController.forward();
      }
    });

    Future.delayed(const Duration(milliseconds: 1400), () {
      if (mounted) {
        setState(() {
          _showLogo = true;
        });
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AppColors.init(context);
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppColors.of(context);
    AppDimen.of(context);
    return Scaffold(
      body: SizedBox.expand(
        child: AnimatedBuilder(
          animation: Listenable.merge([_fadeController, _progressController]),
          builder: (context, child) {
            return Stack(
              fit: StackFit.expand,
              children: [
                // Background Image or Logo
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 1000),
                  switchInCurve: Curves.easeInOutCubic,
                  switchOutCurve: Curves.easeInOutCubic,
                  child: _showLogo
                      ? Container(
                          key: const ValueKey('logo_container'),
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(bottom: 110.h),
                          child: Center(
                            child: FadeTransition(
                              opacity: _fadeAnimation,
                              child: Assets.images.logo.image(
                                width: 0.8.sw,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          key: const ValueKey('splash_container'),
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Assets.images.splash.provider(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                ),

                if (_showLogo)
                  Positioned(
                    bottom: 120.h,
                    left: 0,
                    right: 0,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 0.4.sw,
                            height: 3.h,
                            margin: EdgeInsets.symmetric(horizontal: 0.3.sw),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.r),
                              child: LinearProgressIndicator(
                                value: _progressAnimation.value,
                                backgroundColor: context.colorScheme.onSurface
                                    .withOpacityX(0.3),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.current.primaryColor,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 16.h),

                          Text(
                            locale.global.loading,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
