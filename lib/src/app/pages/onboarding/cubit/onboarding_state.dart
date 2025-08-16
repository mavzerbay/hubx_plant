part of 'onboarding_cubit.dart';

@freezed
abstract class OnboardingState extends BaseBlocState with _$OnboardingState {
  factory OnboardingState({
    @Default(0) int currentPage,
    @Default(true) bool isFirstPage,
  }) = _OnboardingState;

  OnboardingState._();
}
