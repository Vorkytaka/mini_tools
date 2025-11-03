// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetime_converter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DatetimeConverterState {

 TZDateTime? get datetime; bool get isReadOnly; String get input; InputType get inputType; DatetimeFormat get format;
/// Create a copy of DatetimeConverterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatetimeConverterStateCopyWith<DatetimeConverterState> get copyWith => _$DatetimeConverterStateCopyWithImpl<DatetimeConverterState>(this as DatetimeConverterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatetimeConverterState&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.isReadOnly, isReadOnly) || other.isReadOnly == isReadOnly)&&(identical(other.input, input) || other.input == input)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,datetime,isReadOnly,input,inputType,format);

@override
String toString() {
  return 'DatetimeConverterState(datetime: $datetime, isReadOnly: $isReadOnly, input: $input, inputType: $inputType, format: $format)';
}


}

/// @nodoc
abstract mixin class $DatetimeConverterStateCopyWith<$Res>  {
  factory $DatetimeConverterStateCopyWith(DatetimeConverterState value, $Res Function(DatetimeConverterState) _then) = _$DatetimeConverterStateCopyWithImpl;
@useResult
$Res call({
 TZDateTime? datetime, bool isReadOnly, String input, InputType inputType, DatetimeFormat format
});




}
/// @nodoc
class _$DatetimeConverterStateCopyWithImpl<$Res>
    implements $DatetimeConverterStateCopyWith<$Res> {
  _$DatetimeConverterStateCopyWithImpl(this._self, this._then);

  final DatetimeConverterState _self;
  final $Res Function(DatetimeConverterState) _then;

/// Create a copy of DatetimeConverterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? datetime = freezed,Object? isReadOnly = null,Object? input = null,Object? inputType = null,Object? format = null,}) {
  return _then(_self.copyWith(
datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as TZDateTime?,isReadOnly: null == isReadOnly ? _self.isReadOnly : isReadOnly // ignore: cast_nullable_to_non_nullable
as bool,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as InputType,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as DatetimeFormat,
  ));
}

}


/// Adds pattern-matching-related methods to [DatetimeConverterState].
extension DatetimeConverterStatePatterns on DatetimeConverterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DatetimeConverterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DatetimeConverterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DatetimeConverterState value)  $default,){
final _that = this;
switch (_that) {
case _DatetimeConverterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DatetimeConverterState value)?  $default,){
final _that = this;
switch (_that) {
case _DatetimeConverterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TZDateTime? datetime,  bool isReadOnly,  String input,  InputType inputType,  DatetimeFormat format)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DatetimeConverterState() when $default != null:
return $default(_that.datetime,_that.isReadOnly,_that.input,_that.inputType,_that.format);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TZDateTime? datetime,  bool isReadOnly,  String input,  InputType inputType,  DatetimeFormat format)  $default,) {final _that = this;
switch (_that) {
case _DatetimeConverterState():
return $default(_that.datetime,_that.isReadOnly,_that.input,_that.inputType,_that.format);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TZDateTime? datetime,  bool isReadOnly,  String input,  InputType inputType,  DatetimeFormat format)?  $default,) {final _that = this;
switch (_that) {
case _DatetimeConverterState() when $default != null:
return $default(_that.datetime,_that.isReadOnly,_that.input,_that.inputType,_that.format);case _:
  return null;

}
}

}

/// @nodoc


class _DatetimeConverterState implements DatetimeConverterState {
  const _DatetimeConverterState({required this.datetime, required this.isReadOnly, required this.input, required this.inputType, required this.format});
  

@override final  TZDateTime? datetime;
@override final  bool isReadOnly;
@override final  String input;
@override final  InputType inputType;
@override final  DatetimeFormat format;

/// Create a copy of DatetimeConverterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatetimeConverterStateCopyWith<_DatetimeConverterState> get copyWith => __$DatetimeConverterStateCopyWithImpl<_DatetimeConverterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DatetimeConverterState&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.isReadOnly, isReadOnly) || other.isReadOnly == isReadOnly)&&(identical(other.input, input) || other.input == input)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,datetime,isReadOnly,input,inputType,format);

@override
String toString() {
  return 'DatetimeConverterState(datetime: $datetime, isReadOnly: $isReadOnly, input: $input, inputType: $inputType, format: $format)';
}


}

/// @nodoc
abstract mixin class _$DatetimeConverterStateCopyWith<$Res> implements $DatetimeConverterStateCopyWith<$Res> {
  factory _$DatetimeConverterStateCopyWith(_DatetimeConverterState value, $Res Function(_DatetimeConverterState) _then) = __$DatetimeConverterStateCopyWithImpl;
@override @useResult
$Res call({
 TZDateTime? datetime, bool isReadOnly, String input, InputType inputType, DatetimeFormat format
});




}
/// @nodoc
class __$DatetimeConverterStateCopyWithImpl<$Res>
    implements _$DatetimeConverterStateCopyWith<$Res> {
  __$DatetimeConverterStateCopyWithImpl(this._self, this._then);

  final _DatetimeConverterState _self;
  final $Res Function(_DatetimeConverterState) _then;

/// Create a copy of DatetimeConverterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? datetime = freezed,Object? isReadOnly = null,Object? input = null,Object? inputType = null,Object? format = null,}) {
  return _then(_DatetimeConverterState(
datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as TZDateTime?,isReadOnly: null == isReadOnly ? _self.isReadOnly : isReadOnly // ignore: cast_nullable_to_non_nullable
as bool,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as InputType,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as DatetimeFormat,
  ));
}


}

// dart format on
