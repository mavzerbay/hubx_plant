part of 'app_bloc.dart';

@freezed
sealed class AppEvent extends BaseBlocEvent with _$AppEvent {
  const AppEvent._();

  const factory AppEvent.started() = _Started;

  const factory AppEvent.loadingVisibilityEmitted({
    required bool visibility,
    String? message,
  }) = _LoadingVisibilityEmitted;

  const factory AppEvent.appThemeModeChanged({
    required ThemeMode themeMode,
  }) = _AppThemeModeChanged;

  const factory AppEvent.appLanguageChanged({
    required AppLocale locale,
  }) = _AppLanguageChanged;

  const factory AppEvent.isAppLaunchedFirstTime() = _IsAppLaunchedFirstTime;
}
