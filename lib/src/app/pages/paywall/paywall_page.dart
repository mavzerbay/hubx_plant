import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/components/buttons/primary_button.dart';
import 'package:hubx/src/app/pages/paywall/models/feature_model.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/color_extension.dart';
import 'package:hubx/src/shared/extensions/context_extension.dart';

@RoutePage()
class PaywallPage extends StatefulWidget {
  const PaywallPage({super.key});

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage> {
  final ValueNotifier<int> selectedFeatureIndex = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
    Translations.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFF101E17),
      body: Stack(
        children: [
          _buildContent(context),
          _buildCloseButton(context),
        ],
      ),
    );
  }

  Align _buildCloseButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding:
            EdgeInsets.symmetric(
              horizontal: 20.w,
            ) +
            EdgeInsets.only(top: context.viewPaddingTop),
        child: GestureDetector(
          onTap: () => context.navigator.maybePop(),
          child: Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.black.withOpacityX(0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.close,
              color: AppColors.plantWhite,
              size: 24.sp,
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTopBackground(context),

          SizedBox(height: 24.h),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              spacing: 16.h,
              children: [
                SizedBox(
                  height: 124.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: features.length,
                    itemBuilder: (context, index) {
                      final feature = features[index];
                      return _buildFeatureCard(feature);
                    },
                  ),
                ),

                SizedBox(height: 8.h),

                _buildPricingOption(
                  title: locale.paywall.pricing.monthly.title,
                  subtitle: locale.paywall.pricing.monthly.description(
                    amount: 2.99,
                  ),
                  index: 0,
                ),
                _buildPricingOption(
                  title: locale.paywall.pricing.yearly.title,
                  subtitle: locale.paywall.pricing.yearly.description(
                    amount: 529.99,
                  ),
                  badge: locale.paywall.pricing.yearly.discount,
                  index: 1,
                ),

                SizedBox(height: 8.h),

                PrimaryButton(
                  text: locale.paywall.actions.tryFree,
                  onPressed: () {},
                ),

                Padding(
                  padding: EdgeInsets.only(
                    bottom: context.viewPaddingBottom,
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: locale.paywall.bottomText(amount: 274.99),
                        ),
                        TextSpan(
                          text: '\n${locale.paywall.terms}',
                          style: AppTextStyles.bodySmall().copyWith(
                            fontSize: 11.sp,
                            color: AppColors.plantWhite.withOpacityX(0.52),
                            fontWeight: FontWeight.w400,
                            height: (16 / 11).sp,
                          ),
                        ),
                      ],
                    ),
                    style: AppTextStyles.bodySmall().copyWith(
                      fontSize: 9.sp,
                      color: AppColors.plantWhite.withOpacityX(0.52),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack _buildTopBackground(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 0.55.sh,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.premiumBackground.path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  locale.paywall.title(
                    logo: (text) => TextSpan(
                      text: text,
                      style: AppTextStyles.headlineMedium().copyWith(
                        color: AppColors.plantWhite,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  style: AppTextStyles.headlineMedium().copyWith(
                    color: AppColors.plantWhite,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  locale.paywall.subtitle,
                  style: AppTextStyles.bodyLarge().copyWith(
                    color: AppColors.plantWhite,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.38.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureCard(FeatureModel feature) {
    return Container(
      width: 150.w,
      padding: EdgeInsets.only(
        top: 16.h,
        right: 42.w,
        bottom: 16.h,
        left: 16.w,
      ),
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
        color: const Color(0x14FFFFFF),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacityX(0.24),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Image.asset(
              feature.iconPath,
              width: 36.sp,
              height: 36.sp,
              color: AppColors.plantWhite,
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                feature.title,
                style: AppTextStyles.bodyLarge().copyWith(
                  color: AppColors.plantWhite,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
              Text(
                feature.subtitle,
                style: AppTextStyles.bodySmall().copyWith(
                  color: AppColors.plantWhite.withOpacityX(0.7),
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPricingOption({
    required String title,
    required int index,
    required String subtitle,
    String? badge,
  }) {
    return ValueListenableBuilder(
      valueListenable: selectedFeatureIndex,
      builder: (context, value, child) {
        final isSelected = value == index;
        return GestureDetector(
          onTap: () {
            selectedFeatureIndex.value = index;
          },
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  gradient: isSelected ? AppColors.paywallPriceGradient : null,
                  color: !isSelected
                      ? AppColors.plantWhite.withOpacityX(0.05)
                      : null,
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(
                    color: isSelected
                        ? AppColors.plantGreen
                        : AppColors.plantWhite.withOpacityX(0.3),
                    width: isSelected ? 1.5 : 1,
                  ),
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: Colors.black.withOpacityX(0.1),
                            blurRadius: 80,
                          ),
                        ]
                      : null,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 24.w,
                      height: 24.h,
                      margin: EdgeInsets.only(right: 16.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected
                            ? AppColors.plantGreen
                            : AppColors.plantWhite.withOpacityX(0.08),
                        border: isSelected
                            ? Border.all(
                                color: const Color(0x66FFFFFF),
                                width: 2,
                              )
                            : null,
                      ),
                      child: isSelected
                          ? Center(
                              child: Container(
                                width: 8.w,
                                height: 8.h,
                                decoration: const BoxDecoration(
                                  color: AppColors.plantWhite,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                          : null,
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: AppTextStyles.bodyMedium().copyWith(
                              color: AppColors.plantWhite,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            subtitle,
                            style: AppTextStyles.bodySmall().copyWith(
                              color: AppColors.plantWhite.withOpacityX(0.7),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              if (badge != null)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.plantGreen,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(14.r),
                        bottomLeft: Radius.circular(20.r),
                      ),
                      border: Border.all(
                        color: AppColors.plantGreen,
                      ),
                    ),
                    child: Text(
                      badge,
                      style: AppTextStyles.bodySmall().copyWith(
                        color: AppColors.plantWhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
