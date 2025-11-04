// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regexp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegExpState {

 String get input; String get testString; bool get isGlobal; bool get isMultiline; bool get isCaseSensitive; bool get isUnicode; bool get isDotAll; RegExp? get regexp; List<RegExpMatch>? get matches;
/// Create a copy of RegExpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegExpStateCopyWith<RegExpState> get copyWith => _$RegExpStateCopyWithImpl<RegExpState>(this as RegExpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegExpState&&(identical(other.input, input) || other.input == input)&&(identical(other.testString, testString) || other.testString == testString)&&(identical(other.isGlobal, isGlobal) || other.isGlobal == isGlobal)&&(identical(other.isMultiline, isMultiline) || other.isMultiline == isMultiline)&&(identical(other.isCaseSensitive, isCaseSensitive) || other.isCaseSensitive == isCaseSensitive)&&(identical(other.isUnicode, isUnicode) || other.isUnicode == isUnicode)&&(identical(other.isDotAll, isDotAll) || other.isDotAll == isDotAll)&&(identical(other.regexp, regexp) || other.regexp == regexp)&&const DeepCollectionEquality().equals(other.matches, matches));
}


@override
int get hashCode => Object.hash(runtimeType,input,testString,isGlobal,isMultiline,isCaseSensitive,isUnicode,isDotAll,regexp,const DeepCollectionEquality().hash(matches));

@override
String toString() {
  return 'RegExpState(input: $input, testString: $testString, isGlobal: $isGlobal, isMultiline: $isMultiline, isCaseSensitive: $isCaseSensitive, isUnicode: $isUnicode, isDotAll: $isDotAll, regexp: $regexp, matches: $matches)';
}


}

/// @nodoc
abstract mixin class $RegExpStateCopyWith<$Res>  {
  factory $RegExpStateCopyWith(RegExpState value, $Res Function(RegExpState) _then) = _$RegExpStateCopyWithImpl;
@useResult
$Res call({
 String input, String testString, bool isGlobal, bool isMultiline, bool isCaseSensitive, bool isUnicode, bool isDotAll, RegExp? regexp, List<RegExpMatch>? matches
});




}
/// @nodoc
class _$RegExpStateCopyWithImpl<$Res>
    implements $RegExpStateCopyWith<$Res> {
  _$RegExpStateCopyWithImpl(this._self, this._then);

  final RegExpState _self;
  final $Res Function(RegExpState) _then;

/// Create a copy of RegExpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? testString = null,Object? isGlobal = null,Object? isMultiline = null,Object? isCaseSensitive = null,Object? isUnicode = null,Object? isDotAll = null,Object? regexp = freezed,Object? matches = freezed,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,testString: null == testString ? _self.testString : testString // ignore: cast_nullable_to_non_nullable
as String,isGlobal: null == isGlobal ? _self.isGlobal : isGlobal // ignore: cast_nullable_to_non_nullable
as bool,isMultiline: null == isMultiline ? _self.isMultiline : isMultiline // ignore: cast_nullable_to_non_nullable
as bool,isCaseSensitive: null == isCaseSensitive ? _self.isCaseSensitive : isCaseSensitive // ignore: cast_nullable_to_non_nullable
as bool,isUnicode: null == isUnicode ? _self.isUnicode : isUnicode // ignore: cast_nullable_to_non_nullable
as bool,isDotAll: null == isDotAll ? _self.isDotAll : isDotAll // ignore: cast_nullable_to_non_nullable
as bool,regexp: freezed == regexp ? _self.regexp : regexp // ignore: cast_nullable_to_non_nullable
as RegExp?,matches: freezed == matches ? _self.matches : matches // ignore: cast_nullable_to_non_nullable
as List<RegExpMatch>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegExpState].
extension RegExpStatePatterns on RegExpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegExpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegExpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegExpState value)  $default,){
final _that = this;
switch (_that) {
case _RegExpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegExpState value)?  $default,){
final _that = this;
switch (_that) {
case _RegExpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String input,  String testString,  bool isGlobal,  bool isMultiline,  bool isCaseSensitive,  bool isUnicode,  bool isDotAll,  RegExp? regexp,  List<RegExpMatch>? matches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegExpState() when $default != null:
return $default(_that.input,_that.testString,_that.isGlobal,_that.isMultiline,_that.isCaseSensitive,_that.isUnicode,_that.isDotAll,_that.regexp,_that.matches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String input,  String testString,  bool isGlobal,  bool isMultiline,  bool isCaseSensitive,  bool isUnicode,  bool isDotAll,  RegExp? regexp,  List<RegExpMatch>? matches)  $default,) {final _that = this;
switch (_that) {
case _RegExpState():
return $default(_that.input,_that.testString,_that.isGlobal,_that.isMultiline,_that.isCaseSensitive,_that.isUnicode,_that.isDotAll,_that.regexp,_that.matches);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String input,  String testString,  bool isGlobal,  bool isMultiline,  bool isCaseSensitive,  bool isUnicode,  bool isDotAll,  RegExp? regexp,  List<RegExpMatch>? matches)?  $default,) {final _that = this;
switch (_that) {
case _RegExpState() when $default != null:
return $default(_that.input,_that.testString,_that.isGlobal,_that.isMultiline,_that.isCaseSensitive,_that.isUnicode,_that.isDotAll,_that.regexp,_that.matches);case _:
  return null;

}
}

}

/// @nodoc


class _RegExpState implements RegExpState {
  const _RegExpState({required this.input, required this.testString, required this.isGlobal, required this.isMultiline, required this.isCaseSensitive, required this.isUnicode, required this.isDotAll, required this.regexp, required final  List<RegExpMatch>? matches}): _matches = matches;
  

@override final  String input;
@override final  String testString;
@override final  bool isGlobal;
@override final  bool isMultiline;
@override final  bool isCaseSensitive;
@override final  bool isUnicode;
@override final  bool isDotAll;
@override final  RegExp? regexp;
 final  List<RegExpMatch>? _matches;
@override List<RegExpMatch>? get matches {
  final value = _matches;
  if (value == null) return null;
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RegExpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegExpStateCopyWith<_RegExpState> get copyWith => __$RegExpStateCopyWithImpl<_RegExpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegExpState&&(identical(other.input, input) || other.input == input)&&(identical(other.testString, testString) || other.testString == testString)&&(identical(other.isGlobal, isGlobal) || other.isGlobal == isGlobal)&&(identical(other.isMultiline, isMultiline) || other.isMultiline == isMultiline)&&(identical(other.isCaseSensitive, isCaseSensitive) || other.isCaseSensitive == isCaseSensitive)&&(identical(other.isUnicode, isUnicode) || other.isUnicode == isUnicode)&&(identical(other.isDotAll, isDotAll) || other.isDotAll == isDotAll)&&(identical(other.regexp, regexp) || other.regexp == regexp)&&const DeepCollectionEquality().equals(other._matches, _matches));
}


@override
int get hashCode => Object.hash(runtimeType,input,testString,isGlobal,isMultiline,isCaseSensitive,isUnicode,isDotAll,regexp,const DeepCollectionEquality().hash(_matches));

@override
String toString() {
  return 'RegExpState(input: $input, testString: $testString, isGlobal: $isGlobal, isMultiline: $isMultiline, isCaseSensitive: $isCaseSensitive, isUnicode: $isUnicode, isDotAll: $isDotAll, regexp: $regexp, matches: $matches)';
}


}

/// @nodoc
abstract mixin class _$RegExpStateCopyWith<$Res> implements $RegExpStateCopyWith<$Res> {
  factory _$RegExpStateCopyWith(_RegExpState value, $Res Function(_RegExpState) _then) = __$RegExpStateCopyWithImpl;
@override @useResult
$Res call({
 String input, String testString, bool isGlobal, bool isMultiline, bool isCaseSensitive, bool isUnicode, bool isDotAll, RegExp? regexp, List<RegExpMatch>? matches
});




}
/// @nodoc
class __$RegExpStateCopyWithImpl<$Res>
    implements _$RegExpStateCopyWith<$Res> {
  __$RegExpStateCopyWithImpl(this._self, this._then);

  final _RegExpState _self;
  final $Res Function(_RegExpState) _then;

/// Create a copy of RegExpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? testString = null,Object? isGlobal = null,Object? isMultiline = null,Object? isCaseSensitive = null,Object? isUnicode = null,Object? isDotAll = null,Object? regexp = freezed,Object? matches = freezed,}) {
  return _then(_RegExpState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,testString: null == testString ? _self.testString : testString // ignore: cast_nullable_to_non_nullable
as String,isGlobal: null == isGlobal ? _self.isGlobal : isGlobal // ignore: cast_nullable_to_non_nullable
as bool,isMultiline: null == isMultiline ? _self.isMultiline : isMultiline // ignore: cast_nullable_to_non_nullable
as bool,isCaseSensitive: null == isCaseSensitive ? _self.isCaseSensitive : isCaseSensitive // ignore: cast_nullable_to_non_nullable
as bool,isUnicode: null == isUnicode ? _self.isUnicode : isUnicode // ignore: cast_nullable_to_non_nullable
as bool,isDotAll: null == isDotAll ? _self.isDotAll : isDotAll // ignore: cast_nullable_to_non_nullable
as bool,regexp: freezed == regexp ? _self.regexp : regexp // ignore: cast_nullable_to_non_nullable
as RegExp?,matches: freezed == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<RegExpMatch>?,
  ));
}


}

// dart format on
