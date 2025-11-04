// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_diff_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TextDiffEffect {

 String get oldText; String get newText;
/// Create a copy of TextDiffEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextDiffEffectCopyWith<TextDiffEffect> get copyWith => _$TextDiffEffectCopyWithImpl<TextDiffEffect>(this as TextDiffEffect, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextDiffEffect&&(identical(other.oldText, oldText) || other.oldText == oldText)&&(identical(other.newText, newText) || other.newText == newText));
}


@override
int get hashCode => Object.hash(runtimeType,oldText,newText);

@override
String toString() {
  return 'TextDiffEffect(oldText: $oldText, newText: $newText)';
}


}

/// @nodoc
abstract mixin class $TextDiffEffectCopyWith<$Res>  {
  factory $TextDiffEffectCopyWith(TextDiffEffect value, $Res Function(TextDiffEffect) _then) = _$TextDiffEffectCopyWithImpl;
@useResult
$Res call({
 String oldText, String newText
});




}
/// @nodoc
class _$TextDiffEffectCopyWithImpl<$Res>
    implements $TextDiffEffectCopyWith<$Res> {
  _$TextDiffEffectCopyWithImpl(this._self, this._then);

  final TextDiffEffect _self;
  final $Res Function(TextDiffEffect) _then;

/// Create a copy of TextDiffEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldText = null,Object? newText = null,}) {
  return _then(_self.copyWith(
oldText: null == oldText ? _self.oldText : oldText // ignore: cast_nullable_to_non_nullable
as String,newText: null == newText ? _self.newText : newText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TextDiffEffect].
extension TextDiffEffectPatterns on TextDiffEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CountDiffsEffect value)?  countDiffs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CountDiffsEffect() when countDiffs != null:
return countDiffs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CountDiffsEffect value)  countDiffs,}){
final _that = this;
switch (_that) {
case CountDiffsEffect():
return countDiffs(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CountDiffsEffect value)?  countDiffs,}){
final _that = this;
switch (_that) {
case CountDiffsEffect() when countDiffs != null:
return countDiffs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String oldText,  String newText)?  countDiffs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CountDiffsEffect() when countDiffs != null:
return countDiffs(_that.oldText,_that.newText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String oldText,  String newText)  countDiffs,}) {final _that = this;
switch (_that) {
case CountDiffsEffect():
return countDiffs(_that.oldText,_that.newText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String oldText,  String newText)?  countDiffs,}) {final _that = this;
switch (_that) {
case CountDiffsEffect() when countDiffs != null:
return countDiffs(_that.oldText,_that.newText);case _:
  return null;

}
}

}

/// @nodoc


class CountDiffsEffect implements TextDiffEffect {
  const CountDiffsEffect({required this.oldText, required this.newText});
  

@override final  String oldText;
@override final  String newText;

/// Create a copy of TextDiffEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountDiffsEffectCopyWith<CountDiffsEffect> get copyWith => _$CountDiffsEffectCopyWithImpl<CountDiffsEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountDiffsEffect&&(identical(other.oldText, oldText) || other.oldText == oldText)&&(identical(other.newText, newText) || other.newText == newText));
}


@override
int get hashCode => Object.hash(runtimeType,oldText,newText);

@override
String toString() {
  return 'TextDiffEffect.countDiffs(oldText: $oldText, newText: $newText)';
}


}

/// @nodoc
abstract mixin class $CountDiffsEffectCopyWith<$Res> implements $TextDiffEffectCopyWith<$Res> {
  factory $CountDiffsEffectCopyWith(CountDiffsEffect value, $Res Function(CountDiffsEffect) _then) = _$CountDiffsEffectCopyWithImpl;
@override @useResult
$Res call({
 String oldText, String newText
});




}
/// @nodoc
class _$CountDiffsEffectCopyWithImpl<$Res>
    implements $CountDiffsEffectCopyWith<$Res> {
  _$CountDiffsEffectCopyWithImpl(this._self, this._then);

  final CountDiffsEffect _self;
  final $Res Function(CountDiffsEffect) _then;

/// Create a copy of TextDiffEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldText = null,Object? newText = null,}) {
  return _then(CountDiffsEffect(
oldText: null == oldText ? _self.oldText : oldText // ignore: cast_nullable_to_non_nullable
as String,newText: null == newText ? _self.newText : newText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
