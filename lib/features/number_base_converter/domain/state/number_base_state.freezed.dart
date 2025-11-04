// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NumberBaseState {

 String get base2; String get base8; String get base10; String get base16; int get customBase; String get customBaseValue; BigInt? get value;
/// Create a copy of NumberBaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberBaseStateCopyWith<NumberBaseState> get copyWith => _$NumberBaseStateCopyWithImpl<NumberBaseState>(this as NumberBaseState, _$identity);

  /// Serializes this NumberBaseState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberBaseState&&(identical(other.base2, base2) || other.base2 == base2)&&(identical(other.base8, base8) || other.base8 == base8)&&(identical(other.base10, base10) || other.base10 == base10)&&(identical(other.base16, base16) || other.base16 == base16)&&(identical(other.customBase, customBase) || other.customBase == customBase)&&(identical(other.customBaseValue, customBaseValue) || other.customBaseValue == customBaseValue)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,base2,base8,base10,base16,customBase,customBaseValue,value);

@override
String toString() {
  return 'NumberBaseState(base2: $base2, base8: $base8, base10: $base10, base16: $base16, customBase: $customBase, customBaseValue: $customBaseValue, value: $value)';
}


}

/// @nodoc
abstract mixin class $NumberBaseStateCopyWith<$Res>  {
  factory $NumberBaseStateCopyWith(NumberBaseState value, $Res Function(NumberBaseState) _then) = _$NumberBaseStateCopyWithImpl;
@useResult
$Res call({
 String base2, String base8, String base10, String base16, int customBase, String customBaseValue, BigInt? value
});




}
/// @nodoc
class _$NumberBaseStateCopyWithImpl<$Res>
    implements $NumberBaseStateCopyWith<$Res> {
  _$NumberBaseStateCopyWithImpl(this._self, this._then);

  final NumberBaseState _self;
  final $Res Function(NumberBaseState) _then;

/// Create a copy of NumberBaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? base2 = null,Object? base8 = null,Object? base10 = null,Object? base16 = null,Object? customBase = null,Object? customBaseValue = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
base2: null == base2 ? _self.base2 : base2 // ignore: cast_nullable_to_non_nullable
as String,base8: null == base8 ? _self.base8 : base8 // ignore: cast_nullable_to_non_nullable
as String,base10: null == base10 ? _self.base10 : base10 // ignore: cast_nullable_to_non_nullable
as String,base16: null == base16 ? _self.base16 : base16 // ignore: cast_nullable_to_non_nullable
as String,customBase: null == customBase ? _self.customBase : customBase // ignore: cast_nullable_to_non_nullable
as int,customBaseValue: null == customBaseValue ? _self.customBaseValue : customBaseValue // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}

}


/// Adds pattern-matching-related methods to [NumberBaseState].
extension NumberBaseStatePatterns on NumberBaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NumberBaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NumberBaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NumberBaseState value)  $default,){
final _that = this;
switch (_that) {
case _NumberBaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NumberBaseState value)?  $default,){
final _that = this;
switch (_that) {
case _NumberBaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String base2,  String base8,  String base10,  String base16,  int customBase,  String customBaseValue,  BigInt? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NumberBaseState() when $default != null:
return $default(_that.base2,_that.base8,_that.base10,_that.base16,_that.customBase,_that.customBaseValue,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String base2,  String base8,  String base10,  String base16,  int customBase,  String customBaseValue,  BigInt? value)  $default,) {final _that = this;
switch (_that) {
case _NumberBaseState():
return $default(_that.base2,_that.base8,_that.base10,_that.base16,_that.customBase,_that.customBaseValue,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String base2,  String base8,  String base10,  String base16,  int customBase,  String customBaseValue,  BigInt? value)?  $default,) {final _that = this;
switch (_that) {
case _NumberBaseState() when $default != null:
return $default(_that.base2,_that.base8,_that.base10,_that.base16,_that.customBase,_that.customBaseValue,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NumberBaseState implements NumberBaseState {
  const _NumberBaseState({required this.base2, required this.base8, required this.base10, required this.base16, required this.customBase, required this.customBaseValue, required this.value}): assert(customBase >= 2 && customBase <= 36);
  factory _NumberBaseState.fromJson(Map<String, dynamic> json) => _$NumberBaseStateFromJson(json);

@override final  String base2;
@override final  String base8;
@override final  String base10;
@override final  String base16;
@override final  int customBase;
@override final  String customBaseValue;
@override final  BigInt? value;

/// Create a copy of NumberBaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberBaseStateCopyWith<_NumberBaseState> get copyWith => __$NumberBaseStateCopyWithImpl<_NumberBaseState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumberBaseStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberBaseState&&(identical(other.base2, base2) || other.base2 == base2)&&(identical(other.base8, base8) || other.base8 == base8)&&(identical(other.base10, base10) || other.base10 == base10)&&(identical(other.base16, base16) || other.base16 == base16)&&(identical(other.customBase, customBase) || other.customBase == customBase)&&(identical(other.customBaseValue, customBaseValue) || other.customBaseValue == customBaseValue)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,base2,base8,base10,base16,customBase,customBaseValue,value);

@override
String toString() {
  return 'NumberBaseState(base2: $base2, base8: $base8, base10: $base10, base16: $base16, customBase: $customBase, customBaseValue: $customBaseValue, value: $value)';
}


}

/// @nodoc
abstract mixin class _$NumberBaseStateCopyWith<$Res> implements $NumberBaseStateCopyWith<$Res> {
  factory _$NumberBaseStateCopyWith(_NumberBaseState value, $Res Function(_NumberBaseState) _then) = __$NumberBaseStateCopyWithImpl;
@override @useResult
$Res call({
 String base2, String base8, String base10, String base16, int customBase, String customBaseValue, BigInt? value
});




}
/// @nodoc
class __$NumberBaseStateCopyWithImpl<$Res>
    implements _$NumberBaseStateCopyWith<$Res> {
  __$NumberBaseStateCopyWithImpl(this._self, this._then);

  final _NumberBaseState _self;
  final $Res Function(_NumberBaseState) _then;

/// Create a copy of NumberBaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? base2 = null,Object? base8 = null,Object? base10 = null,Object? base16 = null,Object? customBase = null,Object? customBaseValue = null,Object? value = freezed,}) {
  return _then(_NumberBaseState(
base2: null == base2 ? _self.base2 : base2 // ignore: cast_nullable_to_non_nullable
as String,base8: null == base8 ? _self.base8 : base8 // ignore: cast_nullable_to_non_nullable
as String,base10: null == base10 ? _self.base10 : base10 // ignore: cast_nullable_to_non_nullable
as String,base16: null == base16 ? _self.base16 : base16 // ignore: cast_nullable_to_non_nullable
as String,customBase: null == customBase ? _self.customBase : customBase // ignore: cast_nullable_to_non_nullable
as int,customBaseValue: null == customBaseValue ? _self.customBaseValue : customBaseValue // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}


}

// dart format on
