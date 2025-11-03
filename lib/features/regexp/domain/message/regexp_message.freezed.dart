// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regexp_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegExpMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegExpMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegExpMessage()';
}


}

/// @nodoc
class $RegExpMessageCopyWith<$Res>  {
$RegExpMessageCopyWith(RegExpMessage _, $Res Function(RegExpMessage) __);
}


/// Adds pattern-matching-related methods to [RegExpMessage].
extension RegExpMessagePatterns on RegExpMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateInput value)?  updateInput,TResult Function( _UpdateGlobal value)?  updateGlobal,TResult Function( _UpdateMultiline value)?  updateMultiline,TResult Function( _UpdateCaseSensitive value)?  updateCaseSensitive,TResult Function( _UpdateUnicode value)?  updateUnicode,TResult Function( _UpdateDotAll value)?  updateDotAll,TResult Function( _UpdateTestString value)?  updateTestString,TResult Function( _UpdateRegExp value)?  updateRegExp,TResult Function( _UpdateMatches value)?  updateMatches,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateInput() when updateInput != null:
return updateInput(_that);case _UpdateGlobal() when updateGlobal != null:
return updateGlobal(_that);case _UpdateMultiline() when updateMultiline != null:
return updateMultiline(_that);case _UpdateCaseSensitive() when updateCaseSensitive != null:
return updateCaseSensitive(_that);case _UpdateUnicode() when updateUnicode != null:
return updateUnicode(_that);case _UpdateDotAll() when updateDotAll != null:
return updateDotAll(_that);case _UpdateTestString() when updateTestString != null:
return updateTestString(_that);case _UpdateRegExp() when updateRegExp != null:
return updateRegExp(_that);case _UpdateMatches() when updateMatches != null:
return updateMatches(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateInput value)  updateInput,required TResult Function( _UpdateGlobal value)  updateGlobal,required TResult Function( _UpdateMultiline value)  updateMultiline,required TResult Function( _UpdateCaseSensitive value)  updateCaseSensitive,required TResult Function( _UpdateUnicode value)  updateUnicode,required TResult Function( _UpdateDotAll value)  updateDotAll,required TResult Function( _UpdateTestString value)  updateTestString,required TResult Function( _UpdateRegExp value)  updateRegExp,required TResult Function( _UpdateMatches value)  updateMatches,}){
final _that = this;
switch (_that) {
case _UpdateInput():
return updateInput(_that);case _UpdateGlobal():
return updateGlobal(_that);case _UpdateMultiline():
return updateMultiline(_that);case _UpdateCaseSensitive():
return updateCaseSensitive(_that);case _UpdateUnicode():
return updateUnicode(_that);case _UpdateDotAll():
return updateDotAll(_that);case _UpdateTestString():
return updateTestString(_that);case _UpdateRegExp():
return updateRegExp(_that);case _UpdateMatches():
return updateMatches(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateInput value)?  updateInput,TResult? Function( _UpdateGlobal value)?  updateGlobal,TResult? Function( _UpdateMultiline value)?  updateMultiline,TResult? Function( _UpdateCaseSensitive value)?  updateCaseSensitive,TResult? Function( _UpdateUnicode value)?  updateUnicode,TResult? Function( _UpdateDotAll value)?  updateDotAll,TResult? Function( _UpdateTestString value)?  updateTestString,TResult? Function( _UpdateRegExp value)?  updateRegExp,TResult? Function( _UpdateMatches value)?  updateMatches,}){
final _that = this;
switch (_that) {
case _UpdateInput() when updateInput != null:
return updateInput(_that);case _UpdateGlobal() when updateGlobal != null:
return updateGlobal(_that);case _UpdateMultiline() when updateMultiline != null:
return updateMultiline(_that);case _UpdateCaseSensitive() when updateCaseSensitive != null:
return updateCaseSensitive(_that);case _UpdateUnicode() when updateUnicode != null:
return updateUnicode(_that);case _UpdateDotAll() when updateDotAll != null:
return updateDotAll(_that);case _UpdateTestString() when updateTestString != null:
return updateTestString(_that);case _UpdateRegExp() when updateRegExp != null:
return updateRegExp(_that);case _UpdateMatches() when updateMatches != null:
return updateMatches(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input)?  updateInput,TResult Function( bool isGlobal)?  updateGlobal,TResult Function( bool isMultiline)?  updateMultiline,TResult Function( bool isCaseSensitive)?  updateCaseSensitive,TResult Function( bool isUnicode)?  updateUnicode,TResult Function( bool isDotAll)?  updateDotAll,TResult Function( String testString)?  updateTestString,TResult Function( RegExp? regexp)?  updateRegExp,TResult Function( List<RegExpMatch>? matches)?  updateMatches,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateInput() when updateInput != null:
return updateInput(_that.input);case _UpdateGlobal() when updateGlobal != null:
return updateGlobal(_that.isGlobal);case _UpdateMultiline() when updateMultiline != null:
return updateMultiline(_that.isMultiline);case _UpdateCaseSensitive() when updateCaseSensitive != null:
return updateCaseSensitive(_that.isCaseSensitive);case _UpdateUnicode() when updateUnicode != null:
return updateUnicode(_that.isUnicode);case _UpdateDotAll() when updateDotAll != null:
return updateDotAll(_that.isDotAll);case _UpdateTestString() when updateTestString != null:
return updateTestString(_that.testString);case _UpdateRegExp() when updateRegExp != null:
return updateRegExp(_that.regexp);case _UpdateMatches() when updateMatches != null:
return updateMatches(_that.matches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input)  updateInput,required TResult Function( bool isGlobal)  updateGlobal,required TResult Function( bool isMultiline)  updateMultiline,required TResult Function( bool isCaseSensitive)  updateCaseSensitive,required TResult Function( bool isUnicode)  updateUnicode,required TResult Function( bool isDotAll)  updateDotAll,required TResult Function( String testString)  updateTestString,required TResult Function( RegExp? regexp)  updateRegExp,required TResult Function( List<RegExpMatch>? matches)  updateMatches,}) {final _that = this;
switch (_that) {
case _UpdateInput():
return updateInput(_that.input);case _UpdateGlobal():
return updateGlobal(_that.isGlobal);case _UpdateMultiline():
return updateMultiline(_that.isMultiline);case _UpdateCaseSensitive():
return updateCaseSensitive(_that.isCaseSensitive);case _UpdateUnicode():
return updateUnicode(_that.isUnicode);case _UpdateDotAll():
return updateDotAll(_that.isDotAll);case _UpdateTestString():
return updateTestString(_that.testString);case _UpdateRegExp():
return updateRegExp(_that.regexp);case _UpdateMatches():
return updateMatches(_that.matches);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input)?  updateInput,TResult? Function( bool isGlobal)?  updateGlobal,TResult? Function( bool isMultiline)?  updateMultiline,TResult? Function( bool isCaseSensitive)?  updateCaseSensitive,TResult? Function( bool isUnicode)?  updateUnicode,TResult? Function( bool isDotAll)?  updateDotAll,TResult? Function( String testString)?  updateTestString,TResult? Function( RegExp? regexp)?  updateRegExp,TResult? Function( List<RegExpMatch>? matches)?  updateMatches,}) {final _that = this;
switch (_that) {
case _UpdateInput() when updateInput != null:
return updateInput(_that.input);case _UpdateGlobal() when updateGlobal != null:
return updateGlobal(_that.isGlobal);case _UpdateMultiline() when updateMultiline != null:
return updateMultiline(_that.isMultiline);case _UpdateCaseSensitive() when updateCaseSensitive != null:
return updateCaseSensitive(_that.isCaseSensitive);case _UpdateUnicode() when updateUnicode != null:
return updateUnicode(_that.isUnicode);case _UpdateDotAll() when updateDotAll != null:
return updateDotAll(_that.isDotAll);case _UpdateTestString() when updateTestString != null:
return updateTestString(_that.testString);case _UpdateRegExp() when updateRegExp != null:
return updateRegExp(_that.regexp);case _UpdateMatches() when updateMatches != null:
return updateMatches(_that.matches);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateInput implements RegExpMessage {
  const _UpdateInput(this.input);
  

 final  String input;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInputCopyWith<_UpdateInput> get copyWith => __$UpdateInputCopyWithImpl<_UpdateInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInput&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'RegExpMessage.updateInput(input: $input)';
}


}

/// @nodoc
abstract mixin class _$UpdateInputCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateInputCopyWith(_UpdateInput value, $Res Function(_UpdateInput) _then) = __$UpdateInputCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class __$UpdateInputCopyWithImpl<$Res>
    implements _$UpdateInputCopyWith<$Res> {
  __$UpdateInputCopyWithImpl(this._self, this._then);

  final _UpdateInput _self;
  final $Res Function(_UpdateInput) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_UpdateInput(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateGlobal implements RegExpMessage {
  const _UpdateGlobal(this.isGlobal);
  

 final  bool isGlobal;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGlobalCopyWith<_UpdateGlobal> get copyWith => __$UpdateGlobalCopyWithImpl<_UpdateGlobal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGlobal&&(identical(other.isGlobal, isGlobal) || other.isGlobal == isGlobal));
}


@override
int get hashCode => Object.hash(runtimeType,isGlobal);

@override
String toString() {
  return 'RegExpMessage.updateGlobal(isGlobal: $isGlobal)';
}


}

/// @nodoc
abstract mixin class _$UpdateGlobalCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateGlobalCopyWith(_UpdateGlobal value, $Res Function(_UpdateGlobal) _then) = __$UpdateGlobalCopyWithImpl;
@useResult
$Res call({
 bool isGlobal
});




}
/// @nodoc
class __$UpdateGlobalCopyWithImpl<$Res>
    implements _$UpdateGlobalCopyWith<$Res> {
  __$UpdateGlobalCopyWithImpl(this._self, this._then);

  final _UpdateGlobal _self;
  final $Res Function(_UpdateGlobal) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isGlobal = null,}) {
  return _then(_UpdateGlobal(
null == isGlobal ? _self.isGlobal : isGlobal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateMultiline implements RegExpMessage {
  const _UpdateMultiline(this.isMultiline);
  

 final  bool isMultiline;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMultilineCopyWith<_UpdateMultiline> get copyWith => __$UpdateMultilineCopyWithImpl<_UpdateMultiline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMultiline&&(identical(other.isMultiline, isMultiline) || other.isMultiline == isMultiline));
}


@override
int get hashCode => Object.hash(runtimeType,isMultiline);

@override
String toString() {
  return 'RegExpMessage.updateMultiline(isMultiline: $isMultiline)';
}


}

/// @nodoc
abstract mixin class _$UpdateMultilineCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateMultilineCopyWith(_UpdateMultiline value, $Res Function(_UpdateMultiline) _then) = __$UpdateMultilineCopyWithImpl;
@useResult
$Res call({
 bool isMultiline
});




}
/// @nodoc
class __$UpdateMultilineCopyWithImpl<$Res>
    implements _$UpdateMultilineCopyWith<$Res> {
  __$UpdateMultilineCopyWithImpl(this._self, this._then);

  final _UpdateMultiline _self;
  final $Res Function(_UpdateMultiline) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isMultiline = null,}) {
  return _then(_UpdateMultiline(
null == isMultiline ? _self.isMultiline : isMultiline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateCaseSensitive implements RegExpMessage {
  const _UpdateCaseSensitive(this.isCaseSensitive);
  

 final  bool isCaseSensitive;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCaseSensitiveCopyWith<_UpdateCaseSensitive> get copyWith => __$UpdateCaseSensitiveCopyWithImpl<_UpdateCaseSensitive>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCaseSensitive&&(identical(other.isCaseSensitive, isCaseSensitive) || other.isCaseSensitive == isCaseSensitive));
}


@override
int get hashCode => Object.hash(runtimeType,isCaseSensitive);

@override
String toString() {
  return 'RegExpMessage.updateCaseSensitive(isCaseSensitive: $isCaseSensitive)';
}


}

/// @nodoc
abstract mixin class _$UpdateCaseSensitiveCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateCaseSensitiveCopyWith(_UpdateCaseSensitive value, $Res Function(_UpdateCaseSensitive) _then) = __$UpdateCaseSensitiveCopyWithImpl;
@useResult
$Res call({
 bool isCaseSensitive
});




}
/// @nodoc
class __$UpdateCaseSensitiveCopyWithImpl<$Res>
    implements _$UpdateCaseSensitiveCopyWith<$Res> {
  __$UpdateCaseSensitiveCopyWithImpl(this._self, this._then);

  final _UpdateCaseSensitive _self;
  final $Res Function(_UpdateCaseSensitive) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isCaseSensitive = null,}) {
  return _then(_UpdateCaseSensitive(
null == isCaseSensitive ? _self.isCaseSensitive : isCaseSensitive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateUnicode implements RegExpMessage {
  const _UpdateUnicode(this.isUnicode);
  

 final  bool isUnicode;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUnicodeCopyWith<_UpdateUnicode> get copyWith => __$UpdateUnicodeCopyWithImpl<_UpdateUnicode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUnicode&&(identical(other.isUnicode, isUnicode) || other.isUnicode == isUnicode));
}


@override
int get hashCode => Object.hash(runtimeType,isUnicode);

@override
String toString() {
  return 'RegExpMessage.updateUnicode(isUnicode: $isUnicode)';
}


}

/// @nodoc
abstract mixin class _$UpdateUnicodeCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateUnicodeCopyWith(_UpdateUnicode value, $Res Function(_UpdateUnicode) _then) = __$UpdateUnicodeCopyWithImpl;
@useResult
$Res call({
 bool isUnicode
});




}
/// @nodoc
class __$UpdateUnicodeCopyWithImpl<$Res>
    implements _$UpdateUnicodeCopyWith<$Res> {
  __$UpdateUnicodeCopyWithImpl(this._self, this._then);

  final _UpdateUnicode _self;
  final $Res Function(_UpdateUnicode) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isUnicode = null,}) {
  return _then(_UpdateUnicode(
null == isUnicode ? _self.isUnicode : isUnicode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateDotAll implements RegExpMessage {
  const _UpdateDotAll(this.isDotAll);
  

 final  bool isDotAll;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDotAllCopyWith<_UpdateDotAll> get copyWith => __$UpdateDotAllCopyWithImpl<_UpdateDotAll>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDotAll&&(identical(other.isDotAll, isDotAll) || other.isDotAll == isDotAll));
}


@override
int get hashCode => Object.hash(runtimeType,isDotAll);

@override
String toString() {
  return 'RegExpMessage.updateDotAll(isDotAll: $isDotAll)';
}


}

/// @nodoc
abstract mixin class _$UpdateDotAllCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateDotAllCopyWith(_UpdateDotAll value, $Res Function(_UpdateDotAll) _then) = __$UpdateDotAllCopyWithImpl;
@useResult
$Res call({
 bool isDotAll
});




}
/// @nodoc
class __$UpdateDotAllCopyWithImpl<$Res>
    implements _$UpdateDotAllCopyWith<$Res> {
  __$UpdateDotAllCopyWithImpl(this._self, this._then);

  final _UpdateDotAll _self;
  final $Res Function(_UpdateDotAll) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDotAll = null,}) {
  return _then(_UpdateDotAll(
null == isDotAll ? _self.isDotAll : isDotAll // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateTestString implements RegExpMessage {
  const _UpdateTestString(this.testString);
  

 final  String testString;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTestStringCopyWith<_UpdateTestString> get copyWith => __$UpdateTestStringCopyWithImpl<_UpdateTestString>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTestString&&(identical(other.testString, testString) || other.testString == testString));
}


@override
int get hashCode => Object.hash(runtimeType,testString);

@override
String toString() {
  return 'RegExpMessage.updateTestString(testString: $testString)';
}


}

/// @nodoc
abstract mixin class _$UpdateTestStringCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateTestStringCopyWith(_UpdateTestString value, $Res Function(_UpdateTestString) _then) = __$UpdateTestStringCopyWithImpl;
@useResult
$Res call({
 String testString
});




}
/// @nodoc
class __$UpdateTestStringCopyWithImpl<$Res>
    implements _$UpdateTestStringCopyWith<$Res> {
  __$UpdateTestStringCopyWithImpl(this._self, this._then);

  final _UpdateTestString _self;
  final $Res Function(_UpdateTestString) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? testString = null,}) {
  return _then(_UpdateTestString(
null == testString ? _self.testString : testString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateRegExp implements RegExpMessage {
  const _UpdateRegExp(this.regexp);
  

 final  RegExp? regexp;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateRegExpCopyWith<_UpdateRegExp> get copyWith => __$UpdateRegExpCopyWithImpl<_UpdateRegExp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateRegExp&&(identical(other.regexp, regexp) || other.regexp == regexp));
}


@override
int get hashCode => Object.hash(runtimeType,regexp);

@override
String toString() {
  return 'RegExpMessage.updateRegExp(regexp: $regexp)';
}


}

/// @nodoc
abstract mixin class _$UpdateRegExpCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateRegExpCopyWith(_UpdateRegExp value, $Res Function(_UpdateRegExp) _then) = __$UpdateRegExpCopyWithImpl;
@useResult
$Res call({
 RegExp? regexp
});




}
/// @nodoc
class __$UpdateRegExpCopyWithImpl<$Res>
    implements _$UpdateRegExpCopyWith<$Res> {
  __$UpdateRegExpCopyWithImpl(this._self, this._then);

  final _UpdateRegExp _self;
  final $Res Function(_UpdateRegExp) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? regexp = freezed,}) {
  return _then(_UpdateRegExp(
freezed == regexp ? _self.regexp : regexp // ignore: cast_nullable_to_non_nullable
as RegExp?,
  ));
}


}

/// @nodoc


class _UpdateMatches implements RegExpMessage {
  const _UpdateMatches(final  List<RegExpMatch>? matches): _matches = matches;
  

 final  List<RegExpMatch>? _matches;
 List<RegExpMatch>? get matches {
  final value = _matches;
  if (value == null) return null;
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMatchesCopyWith<_UpdateMatches> get copyWith => __$UpdateMatchesCopyWithImpl<_UpdateMatches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMatches&&const DeepCollectionEquality().equals(other._matches, _matches));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_matches));

@override
String toString() {
  return 'RegExpMessage.updateMatches(matches: $matches)';
}


}

/// @nodoc
abstract mixin class _$UpdateMatchesCopyWith<$Res> implements $RegExpMessageCopyWith<$Res> {
  factory _$UpdateMatchesCopyWith(_UpdateMatches value, $Res Function(_UpdateMatches) _then) = __$UpdateMatchesCopyWithImpl;
@useResult
$Res call({
 List<RegExpMatch>? matches
});




}
/// @nodoc
class __$UpdateMatchesCopyWithImpl<$Res>
    implements _$UpdateMatchesCopyWith<$Res> {
  __$UpdateMatchesCopyWithImpl(this._self, this._then);

  final _UpdateMatches _self;
  final $Res Function(_UpdateMatches) _then;

/// Create a copy of RegExpMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matches = freezed,}) {
  return _then(_UpdateMatches(
freezed == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<RegExpMatch>?,
  ));
}


}

// dart format on
