// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthInitial value)?  initial,TResult Function( _AuthLogoutButtonPressed value)?  onLogoutButtonPressed,TResult Function( _SetCurrentUser value)?  setCurrentUser,TResult Function( _UploadProfilePhoto value)?  uploadProfilePhoto,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial(_that);case _AuthLogoutButtonPressed() when onLogoutButtonPressed != null:
return onLogoutButtonPressed(_that);case _SetCurrentUser() when setCurrentUser != null:
return setCurrentUser(_that);case _UploadProfilePhoto() when uploadProfilePhoto != null:
return uploadProfilePhoto(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthInitial value)  initial,required TResult Function( _AuthLogoutButtonPressed value)  onLogoutButtonPressed,required TResult Function( _SetCurrentUser value)  setCurrentUser,required TResult Function( _UploadProfilePhoto value)  uploadProfilePhoto,}){
final _that = this;
switch (_that) {
case _AuthInitial():
return initial(_that);case _AuthLogoutButtonPressed():
return onLogoutButtonPressed(_that);case _SetCurrentUser():
return setCurrentUser(_that);case _UploadProfilePhoto():
return uploadProfilePhoto(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthInitial value)?  initial,TResult? Function( _AuthLogoutButtonPressed value)?  onLogoutButtonPressed,TResult? Function( _SetCurrentUser value)?  setCurrentUser,TResult? Function( _UploadProfilePhoto value)?  uploadProfilePhoto,}){
final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial(_that);case _AuthLogoutButtonPressed() when onLogoutButtonPressed != null:
return onLogoutButtonPressed(_that);case _SetCurrentUser() when setCurrentUser != null:
return setCurrentUser(_that);case _UploadProfilePhoto() when uploadProfilePhoto != null:
return uploadProfilePhoto(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isForceLogout)?  onLogoutButtonPressed,TResult Function( UserEntity currentUser)?  setCurrentUser,TResult Function( File photo)?  uploadProfilePhoto,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial();case _AuthLogoutButtonPressed() when onLogoutButtonPressed != null:
return onLogoutButtonPressed(_that.isForceLogout);case _SetCurrentUser() when setCurrentUser != null:
return setCurrentUser(_that.currentUser);case _UploadProfilePhoto() when uploadProfilePhoto != null:
return uploadProfilePhoto(_that.photo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isForceLogout)  onLogoutButtonPressed,required TResult Function( UserEntity currentUser)  setCurrentUser,required TResult Function( File photo)  uploadProfilePhoto,}) {final _that = this;
switch (_that) {
case _AuthInitial():
return initial();case _AuthLogoutButtonPressed():
return onLogoutButtonPressed(_that.isForceLogout);case _SetCurrentUser():
return setCurrentUser(_that.currentUser);case _UploadProfilePhoto():
return uploadProfilePhoto(_that.photo);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isForceLogout)?  onLogoutButtonPressed,TResult? Function( UserEntity currentUser)?  setCurrentUser,TResult? Function( File photo)?  uploadProfilePhoto,}) {final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial();case _AuthLogoutButtonPressed() when onLogoutButtonPressed != null:
return onLogoutButtonPressed(_that.isForceLogout);case _SetCurrentUser() when setCurrentUser != null:
return setCurrentUser(_that.currentUser);case _UploadProfilePhoto() when uploadProfilePhoto != null:
return uploadProfilePhoto(_that.photo);case _:
  return null;

}
}

}

/// @nodoc


class _AuthInitial extends AuthEvent with DiagnosticableTreeMixin {
  const _AuthInitial(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.initial()';
}


}




/// @nodoc


class _AuthLogoutButtonPressed extends AuthEvent with DiagnosticableTreeMixin {
  const _AuthLogoutButtonPressed({this.isForceLogout = false}): super._();
  

@JsonKey() final  bool isForceLogout;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthLogoutButtonPressedCopyWith<_AuthLogoutButtonPressed> get copyWith => __$AuthLogoutButtonPressedCopyWithImpl<_AuthLogoutButtonPressed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.onLogoutButtonPressed'))
    ..add(DiagnosticsProperty('isForceLogout', isForceLogout));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLogoutButtonPressed&&(identical(other.isForceLogout, isForceLogout) || other.isForceLogout == isForceLogout));
}


@override
int get hashCode => Object.hash(runtimeType,isForceLogout);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.onLogoutButtonPressed(isForceLogout: $isForceLogout)';
}


}

/// @nodoc
abstract mixin class _$AuthLogoutButtonPressedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$AuthLogoutButtonPressedCopyWith(_AuthLogoutButtonPressed value, $Res Function(_AuthLogoutButtonPressed) _then) = __$AuthLogoutButtonPressedCopyWithImpl;
@useResult
$Res call({
 bool isForceLogout
});




}
/// @nodoc
class __$AuthLogoutButtonPressedCopyWithImpl<$Res>
    implements _$AuthLogoutButtonPressedCopyWith<$Res> {
  __$AuthLogoutButtonPressedCopyWithImpl(this._self, this._then);

  final _AuthLogoutButtonPressed _self;
  final $Res Function(_AuthLogoutButtonPressed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isForceLogout = null,}) {
  return _then(_AuthLogoutButtonPressed(
isForceLogout: null == isForceLogout ? _self.isForceLogout : isForceLogout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _SetCurrentUser extends AuthEvent with DiagnosticableTreeMixin {
  const _SetCurrentUser({required this.currentUser}): super._();
  

 final  UserEntity currentUser;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCurrentUserCopyWith<_SetCurrentUser> get copyWith => __$SetCurrentUserCopyWithImpl<_SetCurrentUser>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.setCurrentUser'))
    ..add(DiagnosticsProperty('currentUser', currentUser));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCurrentUser&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser));
}


@override
int get hashCode => Object.hash(runtimeType,currentUser);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.setCurrentUser(currentUser: $currentUser)';
}


}

/// @nodoc
abstract mixin class _$SetCurrentUserCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SetCurrentUserCopyWith(_SetCurrentUser value, $Res Function(_SetCurrentUser) _then) = __$SetCurrentUserCopyWithImpl;
@useResult
$Res call({
 UserEntity currentUser
});


$UserEntityCopyWith<$Res> get currentUser;

}
/// @nodoc
class __$SetCurrentUserCopyWithImpl<$Res>
    implements _$SetCurrentUserCopyWith<$Res> {
  __$SetCurrentUserCopyWithImpl(this._self, this._then);

  final _SetCurrentUser _self;
  final $Res Function(_SetCurrentUser) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentUser = null,}) {
  return _then(_SetCurrentUser(
currentUser: null == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get currentUser {
  
  return $UserEntityCopyWith<$Res>(_self.currentUser, (value) {
    return _then(_self.copyWith(currentUser: value));
  });
}
}

/// @nodoc


class _UploadProfilePhoto extends AuthEvent with DiagnosticableTreeMixin {
  const _UploadProfilePhoto({required this.photo}): super._();
  

 final  File photo;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadProfilePhotoCopyWith<_UploadProfilePhoto> get copyWith => __$UploadProfilePhotoCopyWithImpl<_UploadProfilePhoto>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.uploadProfilePhoto'))
    ..add(DiagnosticsProperty('photo', photo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadProfilePhoto&&(identical(other.photo, photo) || other.photo == photo));
}


@override
int get hashCode => Object.hash(runtimeType,photo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.uploadProfilePhoto(photo: $photo)';
}


}

/// @nodoc
abstract mixin class _$UploadProfilePhotoCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$UploadProfilePhotoCopyWith(_UploadProfilePhoto value, $Res Function(_UploadProfilePhoto) _then) = __$UploadProfilePhotoCopyWithImpl;
@useResult
$Res call({
 File photo
});




}
/// @nodoc
class __$UploadProfilePhotoCopyWithImpl<$Res>
    implements _$UploadProfilePhotoCopyWith<$Res> {
  __$UploadProfilePhotoCopyWithImpl(this._self, this._then);

  final _UploadProfilePhoto _self;
  final $Res Function(_UploadProfilePhoto) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? photo = null,}) {
  return _then(_UploadProfilePhoto(
photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc
mixin _$AuthState implements DiagnosticableTreeMixin {

 UserEntity? get currentUser;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthState'))
    ..add(DiagnosticsProperty('currentUser', currentUser));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser));
}


@override
int get hashCode => Object.hash(runtimeType,currentUser);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthState(currentUser: $currentUser)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 UserEntity? currentUser
});


$UserEntityCopyWith<$Res>? get currentUser;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentUser = freezed,}) {
  return _then(_self.copyWith(
currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as UserEntity?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get currentUser {
    if (_self.currentUser == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.currentUser!, (value) {
    return _then(_self.copyWith(currentUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity? currentUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.currentUser);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity? currentUser)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.currentUser);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity? currentUser)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.currentUser);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState extends AuthState with DiagnosticableTreeMixin {
  const _AuthState({this.currentUser}): super._();
  

@override final  UserEntity? currentUser;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthState'))
    ..add(DiagnosticsProperty('currentUser', currentUser));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser));
}


@override
int get hashCode => Object.hash(runtimeType,currentUser);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthState(currentUser: $currentUser)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 UserEntity? currentUser
});


@override $UserEntityCopyWith<$Res>? get currentUser;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentUser = freezed,}) {
  return _then(_AuthState(
currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as UserEntity?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get currentUser {
    if (_self.currentUser == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.currentUser!, (value) {
    return _then(_self.copyWith(currentUser: value));
  });
}
}

// dart format on
