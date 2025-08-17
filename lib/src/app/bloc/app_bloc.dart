import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/base/bloc/base_bloc.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_event.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_state.dart';
import 'package:hubx/src/app/base/cache/cache_manager.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';

import 'package:hubx/src/domain/usecase/get_initial_app_data_usecase.dart';
import 'package:intl/intl.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const _AppState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );
    on<_LoadingVisibilityEmitted>(
      _onLoadingVisibilityEmitted,
      transformer: log(),
    );
    on<_AppThemeModeChanged>(
      _onAppThemeModeChanged,
      transformer: log(),
    );
    on<_AppLanguageChanged>(
      _onAppLanguageChanged,
      transformer: log(),
    );
    on<_IsAppLaunchedFirstTime>(
      _onIsAppLaunchedFirstTime,
      transformer: log(),
    );
  }

  Future<void> _onStarted(_Started event, Emitter<AppState> emit) async {
    await runBlocCatching(
      action: () async {
        final output = await const GetInitialAppDataUseCase().execute(
          const GetInitialAppDataInput(),
        );

        emit(
          state.copyWith(
            isLoggedIn: output.isLoggedIn,
            locale: output.locale,
            isFirstLaunchApp: output.isFirstLaunchApp,
            isAppInitiated: true,
          ),
        );

        add(_AppLanguageChanged(locale: output.locale));

        unawaited(
          Future.microtask(() {
            add(const _IsAppLaunchedFirstTime());
          }),
        );
      },
      handleLoading: false,
    );
  }

  void _onLoadingVisibilityEmitted(
    _LoadingVisibilityEmitted event,
    Emitter<AppState> emit,
  ) {
    emit(
      state.copyWith(
        isLoadingVisible: event.visibility,
        loadingMessage: event.message,
      ),
    );
  }

  void _onAppThemeModeChanged(
    _AppThemeModeChanged event,
    Emitter<AppState> emit,
  ) {
    cacheManager.setInt(
      key: CacheKey.themeMode,
      value: event.themeMode.index,
    );
    emit(
      state.copyWith(
        themeMode: event.themeMode,
      ),
    );
  }

  Future<void> _onAppLanguageChanged(
    _AppLanguageChanged event,
    Emitter<AppState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        await CacheManager.instance.setString(
          key: CacheKey.locale,
          value: event.locale.languageCode,
        );

        final appLocale = AppLocale.values.firstWhere(
          (locale) => locale.languageCode == event.locale.languageCode,
          orElse: () => AppLocale.tr,
        );
        await LocaleSettings.setLocale(appLocale);
        Intl.defaultLocale = appLocale.languageCode;
        emit(
          state.copyWith(
            locale: appLocale,
          ),
        );
      },
      handleLoading: false,
    );
  }

  Future<void> _onIsAppLaunchedFirstTime(
    _IsAppLaunchedFirstTime event,
    Emitter<AppState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        if (state.isFirstLaunchApp) {
          await CacheManager.instance.setBool(
            key: CacheKey.isFirstLaunchApp,
            value: false,
          );
          emit(state.copyWith(isFirstLaunchApp: false));
          unawaited(navigator.replace(const OnboardingRoute()));
        } else {
          unawaited(navigator.replace(const DashboardRoute()));
        }
      },
      handleLoading: false,
    );
  }
}
