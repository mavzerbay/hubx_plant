import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/src/app/base/bloc/base_bloc.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_event.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_state.dart';
import 'package:hubx/src/data/abstractions/data_service_interface.dart';
import 'package:hubx/src/data/models/responses/index.dart';
import 'package:hubx/src/domain/repositories/data_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_Started>(
      _onStarted,
      transformer: asyncExpand(),
    );
    on<_GetQuestions>(
      _onGetQuestions,
      transformer: asyncExpand(),
    );
    on<_GetCategories>(
      _onGetCategories,
      transformer: asyncExpand(),
    );
  }

  final IDataService _service = DataService.instance;

  Future<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    await runBlocCatching(
      action: () async {
        add(const _GetCategories());
        add(const _GetQuestions());
      },
      handleLoading: false,
    );
  }

  Future<void> _onGetQuestions(
    _GetQuestions event,
    Emitter<HomeState> emit,
  ) async {
    await runBlocCatching(
      doOnSubscribe: () => emit(state.copyWith(isQuestionsLoading: true)),
      action: () async {
        final questions = await _service.getQuestions();
        emit(state.copyWith(questions: questions));
      },
      doOnEventCompleted: () => emit(state.copyWith(isQuestionsLoading: false)),
      doOnError: (e) {
        // Hata durumunda yapılması gerekenler
        logE('Error fetching questions: $e');
      },
      handleLoading: false,
    );
  }

  Future<void> _onGetCategories(
    _GetCategories event,
    Emitter<HomeState> emit,
  ) async {
    await runBlocCatching(
      doOnSubscribe: () => emit(state.copyWith(isCategoriesLoading: true)),
      action: () async {
        final categories = await _service.getCategories();
        emit(
          state.copyWith(
            isCategoriesLoading: false,
            categories: categories?.data,
          ),
        );
      },
      doOnEventCompleted: () =>
          emit(state.copyWith(isCategoriesLoading: false)),
      doOnError: (e) {
        // Hata durumunda yapılması gerekenler
        logE('Error fetching categories: $e');
      },
      handleLoading: false,
    );
  }
}
