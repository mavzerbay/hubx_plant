part of 'app_bloc.dart';

@freezed
sealed class AppState extends BaseBlocState with _$AppState {
  const factory AppState({
    AppLocale? locale,
    @Default(false) bool isLoggedIn,
    @Default(true) bool isFirstLaunchApp,
    @Default(false) bool isAppInitiated,
    @Default(ThemeMode.light) ThemeMode themeMode,
    String? loadingMessage,
    @Default(false) bool isLoadingVisible,
  }) = _AppState;

  const AppState._();
}
