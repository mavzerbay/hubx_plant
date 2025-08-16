part of 'dashboard_bloc.dart';

@freezed
sealed class DashboardState extends BaseBlocState with _$DashboardState {
  const factory DashboardState({
    @Default(false) bool isLoading,
  }) = _DashboardState;

  const DashboardState._();
}
