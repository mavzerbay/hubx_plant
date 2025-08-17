part of 'home_bloc.dart';

@freezed
sealed class HomeEvent extends BaseBlocEvent with _$HomeEvent {
  const HomeEvent._();
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getQuestions() = _GetQuestions;
  const factory HomeEvent.getCategories() = _GetCategories;
}
