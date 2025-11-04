// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regexp_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegExpEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegExpEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegExpEffect()';
}


}

/// @nodoc
class $RegExpEffectCopyWith<$Res>  {
$RegExpEffectCopyWith(RegExpEffect _, $Res Function(RegExpEffect) __);
}


/// Adds pattern-matching-related methods to [RegExpEffect].
extension RegExpEffectPatterns on RegExpEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ParseRegExp value)?  parseRegExp,TResult Function( _FindMatches value)?  findMatches,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParseRegExp() when parseRegExp != null:
return parseRegExp(_that);case _FindMatches() when findMatches != null:
return findMatches(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ParseRegExp value)  parseRegExp,required TResult Function( _FindMatches value)  findMatches,}){
final _that = this;
switch (_that) {
case _ParseRegExp():
return parseRegExp(_that);case _FindMatches():
return findMatches(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ParseRegExp value)?  parseRegExp,TResult? Function( _FindMatches value)?  findMatches,}){
final _that = this;
switch (_that) {
case _ParseRegExp() when parseRegExp != null:
return parseRegExp(_that);case _FindMatches() when findMatches != null:
return findMatches(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input,  bool isMultiline,  bool isCaseSensitive,  bool isUnicode,  bool isDotAll)?  parseRegExp,TResult Function( RegExp? regexp,  String testString,  bool isGlobal)?  findMatches,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParseRegExp() when parseRegExp != null:
return parseRegExp(_that.input,_that.isMultiline,_that.isCaseSensitive,_that.isUnicode,_that.isDotAll);case _FindMatches() when findMatches != null:
return findMatches(_that.regexp,_that.testString,_that.isGlobal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input,  bool isMultiline,  bool isCaseSensitive,  bool isUnicode,  bool isDotAll)  parseRegExp,required TResult Function( RegExp? regexp,  String testString,  bool isGlobal)  findMatches,}) {final _that = this;
switch (_that) {
case _ParseRegExp():
return parseRegExp(_that.input,_that.isMultiline,_that.isCaseSensitive,_that.isUnicode,_that.isDotAll);case _FindMatches():
return findMatches(_that.regexp,_that.testString,_that.isGlobal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input,  bool isMultiline,  bool isCaseSensitive,  bool isUnicode,  bool isDotAll)?  parseRegExp,TResult? Function( RegExp? regexp,  String testString,  bool isGlobal)?  findMatches,}) {final _that = this;
switch (_that) {
case _ParseRegExp() when parseRegExp != null:
return parseRegExp(_that.input,_that.isMultiline,_that.isCaseSensitive,_that.isUnicode,_that.isDotAll);case _FindMatches() when findMatches != null:
return findMatches(_that.regexp,_that.testString,_that.isGlobal);case _:
  return null;

}
}

}

/// @nodoc


class _ParseRegExp implements RegExpEffect {
  const _ParseRegExp({required this.input, required this.isMultiline, required this.isCaseSensitive, required this.isUnicode, required this.isDotAll});
  

 final  String input;
 final  bool isMultiline;
 final  bool isCaseSensitive;
 final  bool isUnicode;
 final  bool isDotAll;

/// Create a copy of RegExpEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParseRegExpCopyWith<_ParseRegExp> get copyWith => __$ParseRegExpCopyWithImpl<_ParseRegExp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParseRegExp&&(identical(other.input, input) || other.input == input)&&(identical(other.isMultiline, isMultiline) || other.isMultiline == isMultiline)&&(identical(other.isCaseSensitive, isCaseSensitive) || other.isCaseSensitive == isCaseSensitive)&&(identical(other.isUnicode, isUnicode) || other.isUnicode == isUnicode)&&(identical(other.isDotAll, isDotAll) || other.isDotAll == isDotAll));
}


@override
int get hashCode => Object.hash(runtimeType,input,isMultiline,isCaseSensitive,isUnicode,isDotAll);

@override
String toString() {
  return 'RegExpEffect.parseRegExp(input: $input, isMultiline: $isMultiline, isCaseSensitive: $isCaseSensitive, isUnicode: $isUnicode, isDotAll: $isDotAll)';
}


}

/// @nodoc
abstract mixin class _$ParseRegExpCopyWith<$Res> implements $RegExpEffectCopyWith<$Res> {
  factory _$ParseRegExpCopyWith(_ParseRegExp value, $Res Function(_ParseRegExp) _then) = __$ParseRegExpCopyWithImpl;
@useResult
$Res call({
 String input, bool isMultiline, bool isCaseSensitive, bool isUnicode, bool isDotAll
});




}
/// @nodoc
class __$ParseRegExpCopyWithImpl<$Res>
    implements _$ParseRegExpCopyWith<$Res> {
  __$ParseRegExpCopyWithImpl(this._self, this._then);

  final _ParseRegExp _self;
  final $Res Function(_ParseRegExp) _then;

/// Create a copy of RegExpEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,Object? isMultiline = null,Object? isCaseSensitive = null,Object? isUnicode = null,Object? isDotAll = null,}) {
  return _then(_ParseRegExp(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,isMultiline: null == isMultiline ? _self.isMultiline : isMultiline // ignore: cast_nullable_to_non_nullable
as bool,isCaseSensitive: null == isCaseSensitive ? _self.isCaseSensitive : isCaseSensitive // ignore: cast_nullable_to_non_nullable
as bool,isUnicode: null == isUnicode ? _self.isUnicode : isUnicode // ignore: cast_nullable_to_non_nullable
as bool,isDotAll: null == isDotAll ? _self.isDotAll : isDotAll // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _FindMatches implements RegExpEffect {
  const _FindMatches({required this.regexp, required this.testString, required this.isGlobal});
  

 final  RegExp? regexp;
 final  String testString;
 final  bool isGlobal;

/// Create a copy of RegExpEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindMatchesCopyWith<_FindMatches> get copyWith => __$FindMatchesCopyWithImpl<_FindMatches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindMatches&&(identical(other.regexp, regexp) || other.regexp == regexp)&&(identical(other.testString, testString) || other.testString == testString)&&(identical(other.isGlobal, isGlobal) || other.isGlobal == isGlobal));
}


@override
int get hashCode => Object.hash(runtimeType,regexp,testString,isGlobal);

@override
String toString() {
  return 'RegExpEffect.findMatches(regexp: $regexp, testString: $testString, isGlobal: $isGlobal)';
}


}

/// @nodoc
abstract mixin class _$FindMatchesCopyWith<$Res> implements $RegExpEffectCopyWith<$Res> {
  factory _$FindMatchesCopyWith(_FindMatches value, $Res Function(_FindMatches) _then) = __$FindMatchesCopyWithImpl;
@useResult
$Res call({
 RegExp? regexp, String testString, bool isGlobal
});




}
/// @nodoc
class __$FindMatchesCopyWithImpl<$Res>
    implements _$FindMatchesCopyWith<$Res> {
  __$FindMatchesCopyWithImpl(this._self, this._then);

  final _FindMatches _self;
  final $Res Function(_FindMatches) _then;

/// Create a copy of RegExpEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? regexp = freezed,Object? testString = null,Object? isGlobal = null,}) {
  return _then(_FindMatches(
regexp: freezed == regexp ? _self.regexp : regexp // ignore: cast_nullable_to_non_nullable
as RegExp?,testString: null == testString ? _self.testString : testString // ignore: cast_nullable_to_non_nullable
as String,isGlobal: null == isGlobal ? _self.isGlobal : isGlobal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
