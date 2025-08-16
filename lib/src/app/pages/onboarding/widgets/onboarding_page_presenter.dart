import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/src/app/base/page_states/base_cubit_page_state.dart';
import 'package:hubx/src/app/pages/onboarding/cubit/onboarding_cubit.dart';
import 'package:hubx/src/app/pages/onboarding/model/onboarding_data.dart';
import 'package:hubx/src/app/pages/onboarding/widgets/onboarding_action_buttons.dart';
import 'package:hubx/src/app/pages/onboarding/widgets/onboarding_page_indicator.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

class OnboardingPagePresenter extends StatefulWidget {
  const OnboardingPagePresenter({
    required this.pages,
    super.key,
    this.onSkip,
    this.onFinish,
  });
  final List<OnboardingData> pages;
  final VoidCallback? onSkip;
  final VoidCallback? onFinish;

  @override
  State<OnboardingPagePresenter> createState() =>
      _OnboardingPagePresenterState();
}

class _OnboardingPagePresenterState
    extends BaseCubitPageState<OnboardingPagePresenter, OnboardingCubit> {
  @override
  Widget buildPage(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: cubit.pageController,
              itemCount: widget.pages.length,
              onPageChanged: cubit.setCurrentPage,
              itemBuilder: (context, idx) {
                final item = widget.pages[idx];
                return Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: item.title ?? const SizedBox.shrink(),
                        ),
                        Positioned(
                          right: 25.w,
                          top: 40.h,
                          child: Assets.images.onboarding.brush.image(),
                        ),
                      ],
                    ),
                    if (item.subtitle != null)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          item.subtitle!,
                          style: AppTextStyles.bodyMedium().copyWith(
                            fontWeight: FontWeight.w400,
                            height: (22 / 16).sp,
                            letterSpacing: 0,
                            color: context.textSecondary,
                          ),
                        ),
                      )
                    else
                      Container(),
                    item.child,
                  ],
                );
              },
            ),
          ),

          // Action buttons
          BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              return OnboardingActionButtons(
                currentPage: state.currentPage,
                totalPages: widget.pages.length,
                onNext: cubit.nextPage,
                showTerms: state.isFirstPage,
              );
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              if (state.isFirstPage) {
                return const SizedBox.shrink();
              }
              return OnboardingPageIndicator(
                currentPage: state.currentPage,
                totalPages: widget.pages.length,
              );
            },
          ),
        ],
      ),
    );
  }
}
