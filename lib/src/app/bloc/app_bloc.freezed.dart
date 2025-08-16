// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent()';
}


}

/// @nodoc
class $AppEventCopyWith<$Res>  {
$AppEventCopyWith(AppEvent _, $Res Function(AppEvent) __);
}


/// Adds pattern-matching-related methods to [AppEvent].
extension AppEventPatterns on AppEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadingVisibilityEmitted value)?  loadingVisibilityEmitted,TResult Function( _AppThemeModeChanged value)?  appThemeModeChanged,TResult Function( _AppLanguageChanged value)?  appLanguageChanged,TResult Function( _IsAppLaunchedFirstTime value)?  isAppLaunchedFirstTime,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadingVisibilityEmitted() when loadingVisibilityEmitted != null:
return loadingVisibilityEmitted(_that);case _AppThemeModeChanged() when appThemeModeChanged != null:
return appThemeModeChanged(_that);case _AppLanguageChanged() when appLanguageChanged != null:
return appLanguageChanged(_that);case _IsAppLaunchedFirstTime() when isAppLaunchedFirstTime != null:
return isAppLaunchedFirstTime(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadingVisibilityEmitted value)  loadingVisibilityEmitted,required TResult Function( _AppThemeModeChanged value)  appThemeModeChanged,required TResult Function( _AppLanguageChanged value)  appLanguageChanged,required TResult Function( _IsAppLaunchedFirstTime value)  isAppLaunchedFirstTime,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadingVisibilityEmitted():
return loadingVisibilityEmitted(_that);case _AppThemeModeChanged():
return appThemeModeChanged(_that);case _AppLanguageChanged():
return appLanguageChanged(_that);case _IsAppLaunchedFirstTime():
return isAppLaunchedFirstTime(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadingVisibilityEmitted value)?  loadingVisibilityEmitted,TResult? Function( _AppThemeModeChanged value)?  appThemeModeChanged,TResult? Function( _AppLanguageChanged value)?  appLanguageChanged,TResult? Function( _IsAppLaunchedFirstTime value)?  isAppLaunchedFirstTime,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadingVisibilityEmitted() when loadingVisibilityEmitted != null:
return loadingVisibilityEmitted(_that);case _AppThemeModeChanged() when appThemeModeChanged != null:
return appThemeModeChanged(_that);case _AppLanguageChanged() when appLanguageChanged != null:
return appLanguageChanged(_that);case _IsAppLaunchedFirstTime() when isAppLaunchedFirstTime != null:
return isAppLaunchedFirstTime(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( bool visibility,  String? message)?  loadingVisibilityEmitted,TResult Function( ThemeMode themeMode)?  appThemeModeChanged,TResult Function( AppLocale locale)?  appLanguageChanged,TResult Function()?  isAppLaunchedFirstTime,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadingVisibilityEmitted() when loadingVisibilityEmitted != null:
return loadingVisibilityEmitted(_that.visibility,_that.message);case _AppThemeModeChanged() when appThemeModeChanged != null:
return appThemeModeChanged(_that.themeMode);case _AppLanguageChanged() when appLanguageChanged != null:
return appLanguageChanged(_that.locale);case _IsAppLaunchedFirstTime() when isAppLaunchedFirstTime != null:
return isAppLaunchedFirstTime();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( bool visibility,  String? message)  loadingVisibilityEmitted,required TResult Function( ThemeMode themeMode)  appThemeModeChanged,required TResult Function( AppLocale locale)  appLanguageChanged,required TResult Function()  isAppLaunchedFirstTime,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadingVisibilityEmitted():
return loadingVisibilityEmitted(_that.visibility,_that.message);case _AppThemeModeChanged():
return appThemeModeChanged(_that.themeMode);case _AppLanguageChanged():
return appLanguageChanged(_that.locale);case _IsAppLaunchedFirstTime():
return isAppLaunchedFirstTime();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( bool visibility,  String? message)?  loadingVisibilityEmitted,TResult? Function( ThemeMode themeMode)?  appThemeModeChanged,TResult? Function( AppLocale locale)?  appLanguageChanged,TResult? Function()?  isAppLaunchedFirstTime,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadingVisibilityEmitted() when loadingVisibilityEmitted != null:
return loadingVisibilityEmitted(_that.visibility,_that.message);case _AppThemeModeChanged() when appThemeModeChanged != null:
return appThemeModeChanged(_that.themeMode);case _AppLanguageChanged() when appLanguageChanged != null:
return appLanguageChanged(_that.locale);case _IsAppLaunchedFirstTime() when isAppLaunchedFirstTime != null:
return isAppLaunchedFirstTime();case _:
  return null;

}
}

}

/// @nodoc


class _Started extends AppEvent {
  const _Started(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent.started()';
}


}




/// @nodoc


class _LoadingVisibilityEmitted extends AppEvent {
  const _LoadingVisibilityEmitted({required this.visibility, this.message}): super._();
  

 final  bool visibility;
 final  String? message;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingVisibilityEmittedCopyWith<_LoadingVisibilityEmitted> get copyWith => __$LoadingVisibilityEmittedCopyWithImpl<_LoadingVisibilityEmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingVisibilityEmitted&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,visibility,message);

@override
String toString() {
  return 'AppEvent.loadingVisibilityEmitted(visibility: $visibility, message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoadingVisibilityEmittedCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$LoadingVisibilityEmittedCopyWith(_LoadingVisibilityEmitted value, $Res Function(_LoadingVisibilityEmitted) _then) = __$LoadingVisibilityEmittedCopyWithImpl;
@useResult
$Res call({
 bool visibility, String? message
});




}
/// @nodoc
class __$LoadingVisibilityEmittedCopyWithImpl<$Res>
    implements _$LoadingVisibilityEmittedCopyWith<$Res> {
  __$LoadingVisibilityEmittedCopyWithImpl(this._self, this._then);

  final _LoadingVisibilityEmitted _self;
  final $Res Function(_LoadingVisibilityEmitted) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? visibility = null,Object? message = freezed,}) {
  return _then(_LoadingVisibilityEmitted(
visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AppThemeModeChanged extends AppEvent {
  const _AppThemeModeChanged({required this.themeMode}): super._();
  

 final  ThemeMode themeMode;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppThemeModeChangedCopyWith<_AppThemeModeChanged> get copyWith => __$AppThemeModeChangedCopyWithImpl<_AppThemeModeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppThemeModeChanged&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'AppEvent.appThemeModeChanged(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$AppThemeModeChangedCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$AppThemeModeChangedCopyWith(_AppThemeModeChanged value, $Res Function(_AppThemeModeChanged) _then) = __$AppThemeModeChangedCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode
});




}
/// @nodoc
class __$AppThemeModeChangedCopyWithImpl<$Res>
    implements _$AppThemeModeChangedCopyWith<$Res> {
  __$AppThemeModeChangedCopyWithImpl(this._self, this._then);

  final _AppThemeModeChanged _self;
  final $Res Function(_AppThemeModeChanged) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(_AppThemeModeChanged(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

/// @nodoc


class _AppLanguageChanged extends AppEvent {
  const _AppLanguageChanged({required this.locale}): super._();
  

 final  AppLocale locale;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppLanguageChangedCopyWith<_AppLanguageChanged> get copyWith => __$AppLanguageChangedCopyWithImpl<_AppLanguageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppLanguageChanged&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'AppEvent.appLanguageChanged(locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$AppLanguageChangedCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$AppLanguageChangedCopyWith(_AppLanguageChanged value, $Res Function(_AppLanguageChanged) _then) = __$AppLanguageChangedCopyWithImpl;
@useResult
$Res call({
 AppLocale locale
});




}
/// @nodoc
class __$AppLanguageChangedCopyWithImpl<$Res>
    implements _$AppLanguageChangedCopyWith<$Res> {
  __$AppLanguageChangedCopyWithImpl(this._self, this._then);

  final _AppLanguageChanged _self;
  final $Res Function(_AppLanguageChanged) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(_AppLanguageChanged(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale,
  ));
}


}

/// @nodoc


class _IsAppLaunchedFirstTime extends AppEvent {
  const _IsAppLaunchedFirstTime(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsAppLaunchedFirstTime);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent.isAppLaunchedFirstTime()';
}


}




/// @nodoc
mixin _$AppState {

 AppLocale? get locale; bool get isLoggedIn; bool get isFirstLaunchApp; bool get isAppInitiated; ThemeMode get themeMode; String? get loadingMessage; bool get isLoadingVisible;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.isFirstLaunchApp, isFirstLaunchApp) || other.isFirstLaunchApp == isFirstLaunchApp)&&(identical(other.isAppInitiated, isAppInitiated) || other.isAppInitiated == isAppInitiated)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.loadingMessage, loadingMessage) || other.loadingMessage == loadingMessage)&&(identical(other.isLoadingVisible, isLoadingVisible) || other.isLoadingVisible == isLoadingVisible));
}


@override
int get hashCode => Object.hash(runtimeType,locale,isLoggedIn,isFirstLaunchApp,isAppInitiated,themeMode,loadingMessage,isLoadingVisible);

@override
String toString() {
  return 'AppState(locale: $locale, isLoggedIn: $isLoggedIn, isFirstLaunchApp: $isFirstLaunchApp, isAppInitiated: $isAppInitiated, themeMode: $themeMode, loadingMessage: $loadingMessage, isLoadingVisible: $isLoadingVisible)';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 AppLocale? locale, bool isLoggedIn, bool isFirstLaunchApp, bool isAppInitiated, ThemeMode themeMode, String? loadingMessage, bool isLoadingVisible
});




}
/// @nodoc
class _$AppStateCopyWithImpl<$Res>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locale = freezed,Object? isLoggedIn = null,Object? isFirstLaunchApp = null,Object? isAppInitiated = null,Object? themeMode = null,Object? loadingMessage = freezed,Object? isLoadingVisible = null,}) {
  return _then(_self.copyWith(
locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale?,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,isFirstLaunchApp: null == isFirstLaunchApp ? _self.isFirstLaunchApp : isFirstLaunchApp // ignore: cast_nullable_to_non_nullable
as bool,isAppInitiated: null == isAppInitiated ? _self.isAppInitiated : isAppInitiated // ignore: cast_nullable_to_non_nullable
as bool,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,loadingMessage: freezed == loadingMessage ? _self.loadingMessage : loadingMessage // ignore: cast_nullable_to_non_nullable
as String?,isLoadingVisible: null == isLoadingVisible ? _self.isLoadingVisible : isLoadingVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppState value)  $default,){
final _that = this;
switch (_that) {
case _AppState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppState value)?  $default,){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppLocale? locale,  bool isLoggedIn,  bool isFirstLaunchApp,  bool isAppInitiated,  ThemeMode themeMode,  String? loadingMessage,  bool isLoadingVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.locale,_that.isLoggedIn,_that.isFirstLaunchApp,_that.isAppInitiated,_that.themeMode,_that.loadingMessage,_that.isLoadingVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppLocale? locale,  bool isLoggedIn,  bool isFirstLaunchApp,  bool isAppInitiated,  ThemeMode themeMode,  String? loadingMessage,  bool isLoadingVisible)  $default,) {final _that = this;
switch (_that) {
case _AppState():
return $default(_that.locale,_that.isLoggedIn,_that.isFirstLaunchApp,_that.isAppInitiated,_that.themeMode,_that.loadingMessage,_that.isLoadingVisible);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppLocale? locale,  bool isLoggedIn,  bool isFirstLaunchApp,  bool isAppInitiated,  ThemeMode themeMode,  String? loadingMessage,  bool isLoadingVisible)?  $default,) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.locale,_that.isLoggedIn,_that.isFirstLaunchApp,_that.isAppInitiated,_that.themeMode,_that.loadingMessage,_that.isLoadingVisible);case _:
  return null;

}
}

}

/// @nodoc


class _AppState extends AppState {
  const _AppState({this.locale, this.isLoggedIn = false, this.isFirstLaunchApp = true, this.isAppInitiated = false, this.themeMode = ThemeMode.dark, this.loadingMessage, this.isLoadingVisible = false}): super._();
  

@override final  AppLocale? locale;
@override@JsonKey() final  bool isLoggedIn;
@override@JsonKey() final  bool isFirstLaunchApp;
@override@JsonKey() final  bool isAppInitiated;
@override@JsonKey() final  ThemeMode themeMode;
@override final  String? loadingMessage;
@override@JsonKey() final  bool isLoadingVisible;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppState&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.isFirstLaunchApp, isFirstLaunchApp) || other.isFirstLaunchApp == isFirstLaunchApp)&&(identical(other.isAppInitiated, isAppInitiated) || other.isAppInitiated == isAppInitiated)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.loadingMessage, loadingMessage) || other.loadingMessage == loadingMessage)&&(identical(other.isLoadingVisible, isLoadingVisible) || other.isLoadingVisible == isLoadingVisible));
}


@override
int get hashCode => Object.hash(runtimeType,locale,isLoggedIn,isFirstLaunchApp,isAppInitiated,themeMode,loadingMessage,isLoadingVisible);

@override
String toString() {
  return 'AppState(locale: $locale, isLoggedIn: $isLoggedIn, isFirstLaunchApp: $isFirstLaunchApp, isAppInitiated: $isAppInitiated, themeMode: $themeMode, loadingMessage: $loadingMessage, isLoadingVisible: $isLoadingVisible)';
}


}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) = __$AppStateCopyWithImpl;
@override @useResult
$Res call({
 AppLocale? locale, bool isLoggedIn, bool isFirstLaunchApp, bool isAppInitiated, ThemeMode themeMode, String? loadingMessage, bool isLoadingVisible
});




}
/// @nodoc
class __$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(this._self, this._then);

  final _AppState _self;
  final $Res Function(_AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locale = freezed,Object? isLoggedIn = null,Object? isFirstLaunchApp = null,Object? isAppInitiated = null,Object? themeMode = null,Object? loadingMessage = freezed,Object? isLoadingVisible = null,}) {
  return _then(_AppState(
locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale?,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,isFirstLaunchApp: null == isFirstLaunchApp ? _self.isFirstLaunchApp : isFirstLaunchApp // ignore: cast_nullable_to_non_nullable
as bool,isAppInitiated: null == isAppInitiated ? _self.isAppInitiated : isAppInitiated // ignore: cast_nullable_to_non_nullable
as bool,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,loadingMessage: freezed == loadingMessage ? _self.loadingMessage : loadingMessage // ignore: cast_nullable_to_non_nullable
as String?,isLoadingVisible: null == isLoadingVisible ? _self.isLoadingVisible : isLoadingVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
