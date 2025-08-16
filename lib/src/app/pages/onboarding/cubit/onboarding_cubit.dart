import 'package:flutter/material.dart' show Curves, PageController;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_state.dart';
import 'package:hubx/src/app/base/cubit/base_cubit.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends BaseCubit<OnboardingState> {
  OnboardingCubit() : super(_OnboardingState());

  final PageController pageController = PageController();

  static const int _onboardingPageCount = 3;

  void setCurrentPage(int index) {
    if (index < 0) return;
    if (index >= _onboardingPageCount) {
      navigator.replaceAll([const DashboardRoute()]);
      return;
    }

    final isFirstPage = index == 0;
    emit(state.copyWith(currentPage: index, isFirstPage: isFirstPage));
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOutCubic,
    );
    setCurrentPage(state.currentPage + 1);
  }

  void skipOnboarding() {
    pageController.jumpToPage(_onboardingPageCount - 1);
    setCurrentPage(_onboardingPageCount - 1);
  }

  void completeOnboarding() {
    pageController.dispose();
    navigator.replace(const DashboardRoute());
  }
}
