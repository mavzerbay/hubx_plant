part of 'auth_bloc.dart';

@freezed
sealed class AuthState extends BaseBlocState with _$AuthState {
  const factory AuthState({
    UserEntity? currentUser,
  }) = _AuthState;

  const AuthState._();

  bool get isLoggedIn => currentUser != null;
}
