import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/base/bloc/base_bloc.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_event.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_state.dart';
import 'package:hubx/src/app/base/cache/cache_manager.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';
import 'package:hubx/src/data/abstractions/user_service_interface.dart';
import 'package:hubx/src/data/models/base/base_response.dart';
import 'package:hubx/src/domain/entities/index.dart';
import 'package:hubx/src/domain/repositories/user_service.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _AuthState()) {
    on<_AuthInitial>(_onAuthInitial, transformer: log());
    on<_AuthLogoutButtonPressed>(
      _onAuthLogoutButtonPressed,
      transformer: log(),
    );
    on<_SetCurrentUser>(
      (event, emit) async {
        emit(state.copyWith(currentUser: event.currentUser));
      },
      transformer: log(),
    );
    on<_UploadProfilePhoto>(
      _onUploadProfilePhoto,
      transformer: log(),
    );
  }

  UserEntity? get currentUser => state.currentUser;

  final IUserService _userService = UserService.instance;

  Future<void> _onAuthInitial(
    _AuthInitial event,
    Emitter<AuthState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        final token = await cacheManager.getString(key: CacheKey.accessToken);
        if (token != null) {
          final profileResponse = await _userService.profile();
          if (profileResponse.isSuccess) {
            emit(state.copyWith(currentUser: profileResponse.data!.toEntity()));
          } else {
            navigator.showErrorSnackBar(profileResponse.response.message);
            add(const _AuthLogoutButtonPressed(isForceLogout: true));
          }
        }
      },
      doOnError: (appException) async {
        add(const _AuthLogoutButtonPressed(isForceLogout: true));
      },
      handleLoading: false,
    );
  }

  Future<void> _onAuthLogoutButtonPressed(
    _AuthLogoutButtonPressed event,
    Emitter<AuthState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        if (!event.isForceLogout) {
          final result = await navigator.showDialog<bool>(
            builder: (context) => AlertDialog(
              title: Text(locale.auth.logoutConfirmation),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(locale.global.yes),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text(locale.global.no),
                ),
              ],
            ),
          );
          if (result == null || !result) return;
        }
        showLoading(
          message: 'Çıkış yapılıyor...',
        );

        await Future.wait([
          cacheManager.delete(key: CacheKey.accessToken),
        ]);

        emit(
          state.copyWith(
            currentUser: null,
          ),
        );

        unawaited(navigator.replace(const DashboardRoute()));
      },
      handleError: false,
      handleLoading: false,
      doOnEventCompleted: () async => hideLoading(),
    );
  }

  Future<void> _onUploadProfilePhoto(
    _UploadProfilePhoto event,
    Emitter<AuthState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        final result = await _userService.uploadPhoto(event.photo);
        if (result.isSuccess) {
          navigator.showSuccessSnackBar(
            result.response.message.isNotEmpty
                ? result.response.message
                : locale.auth.photoUploadSuccess,
          );
          emit(
            state.copyWith(
              currentUser: currentUser?.copyWith(
                photoUrl: result.data!.photoUrl,
              ),
            ),
          );
          unawaited(navigator.replaceAll([const ProfileRoute()]));
        } else {
          navigator.showErrorSnackBar(
            locale.exception.errorCodes[result.response.message] ??
                result.response.message,
          );
        }
      },
      doOnError: (error) {
        if (error is DioException &&
            error.error != null &&
            error.error is BaseResponse) {
          final baseResponse = error.error! as BaseResponse;
          navigator.showErrorSnackBar(
            locale.exception.errorCodes[baseResponse.response.message] ??
                baseResponse.response.message,
          );
          return;
        }
        navigator.showErrorSnackBar(locale.exception.unknown);
      },
    );
  }
}
