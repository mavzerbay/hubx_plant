part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent extends BaseBlocEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.initial() = _AuthInitial;

  const factory AuthEvent.onLogoutButtonPressed({
    @Default(false) bool isForceLogout,
  }) = _AuthLogoutButtonPressed;

  const factory AuthEvent.setCurrentUser({
    required UserEntity currentUser,
  }) = _SetCurrentUser;

  const factory AuthEvent.uploadProfilePhoto({
    required File photo,
  }) = _UploadProfilePhoto;
}
