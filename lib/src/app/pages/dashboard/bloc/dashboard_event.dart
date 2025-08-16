part of 'dashboard_bloc.dart';

@freezed
sealed class DashboardEvent extends BaseBlocEvent with _$DashboardEvent {
  const DashboardEvent._();

  const factory DashboardEvent.started() = _Started;
}
