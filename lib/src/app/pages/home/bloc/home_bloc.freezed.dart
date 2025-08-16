// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetQuestions value)?  getQuestions,TResult Function( _GetCategories value)?  getCategories,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetQuestions() when getQuestions != null:
return getQuestions(_that);case _GetCategories() when getCategories != null:
return getCategories(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetQuestions value)  getQuestions,required TResult Function( _GetCategories value)  getCategories,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetQuestions():
return getQuestions(_that);case _GetCategories():
return getCategories(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetQuestions value)?  getQuestions,TResult? Function( _GetCategories value)?  getCategories,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetQuestions() when getQuestions != null:
return getQuestions(_that);case _GetCategories() when getCategories != null:
return getCategories(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getQuestions,TResult Function()?  getCategories,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetQuestions() when getQuestions != null:
return getQuestions();case _GetCategories() when getCategories != null:
return getCategories();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getQuestions,required TResult Function()  getCategories,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetQuestions():
return getQuestions();case _GetCategories():
return getCategories();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getQuestions,TResult? Function()?  getCategories,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetQuestions() when getQuestions != null:
return getQuestions();case _GetCategories() when getCategories != null:
return getCategories();case _:
  return null;

}
}

}

/// @nodoc


class _Started extends HomeEvent {
  const _Started(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.started()';
}


}




/// @nodoc


class _GetQuestions extends HomeEvent {
  const _GetQuestions(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetQuestions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getQuestions()';
}


}




/// @nodoc


class _GetCategories extends HomeEvent {
  const _GetCategories(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getCategories()';
}


}




/// @nodoc
mixin _$HomeState {

 bool get isQuestionsLoading; bool get isCategoriesLoading; List<QuestionModel>? get questions; List<CategoryModel>? get categories;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isQuestionsLoading, isQuestionsLoading) || other.isQuestionsLoading == isQuestionsLoading)&&(identical(other.isCategoriesLoading, isCategoriesLoading) || other.isCategoriesLoading == isCategoriesLoading)&&const DeepCollectionEquality().equals(other.questions, questions)&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,isQuestionsLoading,isCategoriesLoading,const DeepCollectionEquality().hash(questions),const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'HomeState(isQuestionsLoading: $isQuestionsLoading, isCategoriesLoading: $isCategoriesLoading, questions: $questions, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isQuestionsLoading, bool isCategoriesLoading, List<QuestionModel>? questions, List<CategoryModel>? categories
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isQuestionsLoading = null,Object? isCategoriesLoading = null,Object? questions = freezed,Object? categories = freezed,}) {
  return _then(_self.copyWith(
isQuestionsLoading: null == isQuestionsLoading ? _self.isQuestionsLoading : isQuestionsLoading // ignore: cast_nullable_to_non_nullable
as bool,isCategoriesLoading: null == isCategoriesLoading ? _self.isCategoriesLoading : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
as bool,questions: freezed == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionModel>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isQuestionsLoading,  bool isCategoriesLoading,  List<QuestionModel>? questions,  List<CategoryModel>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isQuestionsLoading,_that.isCategoriesLoading,_that.questions,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isQuestionsLoading,  bool isCategoriesLoading,  List<QuestionModel>? questions,  List<CategoryModel>? categories)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isQuestionsLoading,_that.isCategoriesLoading,_that.questions,_that.categories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isQuestionsLoading,  bool isCategoriesLoading,  List<QuestionModel>? questions,  List<CategoryModel>? categories)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isQuestionsLoading,_that.isCategoriesLoading,_that.questions,_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({this.isQuestionsLoading = false, this.isCategoriesLoading = false, final  List<QuestionModel>? questions, final  List<CategoryModel>? categories}): _questions = questions,_categories = categories,super._();
  

@override@JsonKey() final  bool isQuestionsLoading;
@override@JsonKey() final  bool isCategoriesLoading;
 final  List<QuestionModel>? _questions;
@override List<QuestionModel>? get questions {
  final value = _questions;
  if (value == null) return null;
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CategoryModel>? _categories;
@override List<CategoryModel>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isQuestionsLoading, isQuestionsLoading) || other.isQuestionsLoading == isQuestionsLoading)&&(identical(other.isCategoriesLoading, isCategoriesLoading) || other.isCategoriesLoading == isCategoriesLoading)&&const DeepCollectionEquality().equals(other._questions, _questions)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,isQuestionsLoading,isCategoriesLoading,const DeepCollectionEquality().hash(_questions),const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'HomeState(isQuestionsLoading: $isQuestionsLoading, isCategoriesLoading: $isCategoriesLoading, questions: $questions, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isQuestionsLoading, bool isCategoriesLoading, List<QuestionModel>? questions, List<CategoryModel>? categories
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isQuestionsLoading = null,Object? isCategoriesLoading = null,Object? questions = freezed,Object? categories = freezed,}) {
  return _then(_HomeState(
isQuestionsLoading: null == isQuestionsLoading ? _self.isQuestionsLoading : isQuestionsLoading // ignore: cast_nullable_to_non_nullable
as bool,isCategoriesLoading: null == isCategoriesLoading ? _self.isCategoriesLoading : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
as bool,questions: freezed == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionModel>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,
  ));
}


}

// dart format on
