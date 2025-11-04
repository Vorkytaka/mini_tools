// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_diff_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TextDiffState {

 String get oldText; String get newText; List<Diff> get oldDiffs; List<Diff> get newDiffs; List<Diff> get diffs;
/// Create a copy of TextDiffState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextDiffStateCopyWith<TextDiffState> get copyWith => _$TextDiffStateCopyWithImpl<TextDiffState>(this as TextDiffState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextDiffState&&(identical(other.oldText, oldText) || other.oldText == oldText)&&(identical(other.newText, newText) || other.newText == newText)&&const DeepCollectionEquality().equals(other.oldDiffs, oldDiffs)&&const DeepCollectionEquality().equals(other.newDiffs, newDiffs)&&const DeepCollectionEquality().equals(other.diffs, diffs));
}


@override
int get hashCode => Object.hash(runtimeType,oldText,newText,const DeepCollectionEquality().hash(oldDiffs),const DeepCollectionEquality().hash(newDiffs),const DeepCollectionEquality().hash(diffs));

@override
String toString() {
  return 'TextDiffState(oldText: $oldText, newText: $newText, oldDiffs: $oldDiffs, newDiffs: $newDiffs, diffs: $diffs)';
}


}

/// @nodoc
abstract mixin class $TextDiffStateCopyWith<$Res>  {
  factory $TextDiffStateCopyWith(TextDiffState value, $Res Function(TextDiffState) _then) = _$TextDiffStateCopyWithImpl;
@useResult
$Res call({
 String oldText, String newText, List<Diff> oldDiffs, List<Diff> newDiffs, List<Diff> diffs
});




}
/// @nodoc
class _$TextDiffStateCopyWithImpl<$Res>
    implements $TextDiffStateCopyWith<$Res> {
  _$TextDiffStateCopyWithImpl(this._self, this._then);

  final TextDiffState _self;
  final $Res Function(TextDiffState) _then;

/// Create a copy of TextDiffState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldText = null,Object? newText = null,Object? oldDiffs = null,Object? newDiffs = null,Object? diffs = null,}) {
  return _then(_self.copyWith(
oldText: null == oldText ? _self.oldText : oldText // ignore: cast_nullable_to_non_nullable
as String,newText: null == newText ? _self.newText : newText // ignore: cast_nullable_to_non_nullable
as String,oldDiffs: null == oldDiffs ? _self.oldDiffs : oldDiffs // ignore: cast_nullable_to_non_nullable
as List<Diff>,newDiffs: null == newDiffs ? _self.newDiffs : newDiffs // ignore: cast_nullable_to_non_nullable
as List<Diff>,diffs: null == diffs ? _self.diffs : diffs // ignore: cast_nullable_to_non_nullable
as List<Diff>,
  ));
}

}


/// Adds pattern-matching-related methods to [TextDiffState].
extension TextDiffStatePatterns on TextDiffState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextDiffState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextDiffState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextDiffState value)  $default,){
final _that = this;
switch (_that) {
case _TextDiffState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextDiffState value)?  $default,){
final _that = this;
switch (_that) {
case _TextDiffState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String oldText,  String newText,  List<Diff> oldDiffs,  List<Diff> newDiffs,  List<Diff> diffs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextDiffState() when $default != null:
return $default(_that.oldText,_that.newText,_that.oldDiffs,_that.newDiffs,_that.diffs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String oldText,  String newText,  List<Diff> oldDiffs,  List<Diff> newDiffs,  List<Diff> diffs)  $default,) {final _that = this;
switch (_that) {
case _TextDiffState():
return $default(_that.oldText,_that.newText,_that.oldDiffs,_that.newDiffs,_that.diffs);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String oldText,  String newText,  List<Diff> oldDiffs,  List<Diff> newDiffs,  List<Diff> diffs)?  $default,) {final _that = this;
switch (_that) {
case _TextDiffState() when $default != null:
return $default(_that.oldText,_that.newText,_that.oldDiffs,_that.newDiffs,_that.diffs);case _:
  return null;

}
}

}

/// @nodoc


class _TextDiffState implements TextDiffState {
  const _TextDiffState({required this.oldText, required this.newText, required final  List<Diff> oldDiffs, required final  List<Diff> newDiffs, required final  List<Diff> diffs}): _oldDiffs = oldDiffs,_newDiffs = newDiffs,_diffs = diffs;
  

@override final  String oldText;
@override final  String newText;
 final  List<Diff> _oldDiffs;
@override List<Diff> get oldDiffs {
  if (_oldDiffs is EqualUnmodifiableListView) return _oldDiffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_oldDiffs);
}

 final  List<Diff> _newDiffs;
@override List<Diff> get newDiffs {
  if (_newDiffs is EqualUnmodifiableListView) return _newDiffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_newDiffs);
}

 final  List<Diff> _diffs;
@override List<Diff> get diffs {
  if (_diffs is EqualUnmodifiableListView) return _diffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diffs);
}


/// Create a copy of TextDiffState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextDiffStateCopyWith<_TextDiffState> get copyWith => __$TextDiffStateCopyWithImpl<_TextDiffState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextDiffState&&(identical(other.oldText, oldText) || other.oldText == oldText)&&(identical(other.newText, newText) || other.newText == newText)&&const DeepCollectionEquality().equals(other._oldDiffs, _oldDiffs)&&const DeepCollectionEquality().equals(other._newDiffs, _newDiffs)&&const DeepCollectionEquality().equals(other._diffs, _diffs));
}


@override
int get hashCode => Object.hash(runtimeType,oldText,newText,const DeepCollectionEquality().hash(_oldDiffs),const DeepCollectionEquality().hash(_newDiffs),const DeepCollectionEquality().hash(_diffs));

@override
String toString() {
  return 'TextDiffState(oldText: $oldText, newText: $newText, oldDiffs: $oldDiffs, newDiffs: $newDiffs, diffs: $diffs)';
}


}

/// @nodoc
abstract mixin class _$TextDiffStateCopyWith<$Res> implements $TextDiffStateCopyWith<$Res> {
  factory _$TextDiffStateCopyWith(_TextDiffState value, $Res Function(_TextDiffState) _then) = __$TextDiffStateCopyWithImpl;
@override @useResult
$Res call({
 String oldText, String newText, List<Diff> oldDiffs, List<Diff> newDiffs, List<Diff> diffs
});




}
/// @nodoc
class __$TextDiffStateCopyWithImpl<$Res>
    implements _$TextDiffStateCopyWith<$Res> {
  __$TextDiffStateCopyWithImpl(this._self, this._then);

  final _TextDiffState _self;
  final $Res Function(_TextDiffState) _then;

/// Create a copy of TextDiffState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldText = null,Object? newText = null,Object? oldDiffs = null,Object? newDiffs = null,Object? diffs = null,}) {
  return _then(_TextDiffState(
oldText: null == oldText ? _self.oldText : oldText // ignore: cast_nullable_to_non_nullable
as String,newText: null == newText ? _self.newText : newText // ignore: cast_nullable_to_non_nullable
as String,oldDiffs: null == oldDiffs ? _self._oldDiffs : oldDiffs // ignore: cast_nullable_to_non_nullable
as List<Diff>,newDiffs: null == newDiffs ? _self._newDiffs : newDiffs // ignore: cast_nullable_to_non_nullable
as List<Diff>,diffs: null == diffs ? _self._diffs : diffs // ignore: cast_nullable_to_non_nullable
as List<Diff>,
  ));
}


}

// dart format on
