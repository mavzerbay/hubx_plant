part of 'home_bloc.dart';

@freezed
sealed class HomeState extends BaseBlocState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isQuestionsLoading,
    @Default(false) bool isCategoriesLoading,
    List<QuestionModel>? questions,
    List<CategoryModel>? categories,
  }) = _HomeState;

  const HomeState._();
}
