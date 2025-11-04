// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetime_converter_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DatetimeConverterEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatetimeConverterEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatetimeConverterEffect()';
}


}

/// @nodoc
class $DatetimeConverterEffectCopyWith<$Res>  {
$DatetimeConverterEffectCopyWith(DatetimeConverterEffect _, $Res Function(DatetimeConverterEffect) __);
}


/// Adds pattern-matching-related methods to [DatetimeConverterEffect].
extension DatetimeConverterEffectPatterns on DatetimeConverterEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetNowEffect value)?  getNow,TResult Function( ParseEffect value)?  parse,TResult Function( SetInitialDatetimeEffect value)?  setInitialDatetime,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetNowEffect() when getNow != null:
return getNow(_that);case ParseEffect() when parse != null:
return parse(_that);case SetInitialDatetimeEffect() when setInitialDatetime != null:
return setInitialDatetime(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetNowEffect value)  getNow,required TResult Function( ParseEffect value)  parse,required TResult Function( SetInitialDatetimeEffect value)  setInitialDatetime,}){
final _that = this;
switch (_that) {
case GetNowEffect():
return getNow(_that);case ParseEffect():
return parse(_that);case SetInitialDatetimeEffect():
return setInitialDatetime(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetNowEffect value)?  getNow,TResult? Function( ParseEffect value)?  parse,TResult? Function( SetInitialDatetimeEffect value)?  setInitialDatetime,}){
final _that = this;
switch (_that) {
case GetNowEffect() when getNow != null:
return getNow(_that);case ParseEffect() when parse != null:
return parse(_that);case SetInitialDatetimeEffect() when setInitialDatetime != null:
return setInitialDatetime(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getNow,TResult Function( String input,  InputType type)?  parse,TResult Function( DateTime datetime)?  setInitialDatetime,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetNowEffect() when getNow != null:
return getNow();case ParseEffect() when parse != null:
return parse(_that.input,_that.type);case SetInitialDatetimeEffect() when setInitialDatetime != null:
return setInitialDatetime(_that.datetime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getNow,required TResult Function( String input,  InputType type)  parse,required TResult Function( DateTime datetime)  setInitialDatetime,}) {final _that = this;
switch (_that) {
case GetNowEffect():
return getNow();case ParseEffect():
return parse(_that.input,_that.type);case SetInitialDatetimeEffect():
return setInitialDatetime(_that.datetime);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getNow,TResult? Function( String input,  InputType type)?  parse,TResult? Function( DateTime datetime)?  setInitialDatetime,}) {final _that = this;
switch (_that) {
case GetNowEffect() when getNow != null:
return getNow();case ParseEffect() when parse != null:
return parse(_that.input,_that.type);case SetInitialDatetimeEffect() when setInitialDatetime != null:
return setInitialDatetime(_that.datetime);case _:
  return null;

}
}

}

/// @nodoc


class GetNowEffect implements DatetimeConverterEffect {
  const GetNowEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNowEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatetimeConverterEffect.getNow()';
}


}




/// @nodoc


class ParseEffect implements DatetimeConverterEffect {
  const ParseEffect({required this.input, required this.type});
  

 final  String input;
 final  InputType type;

/// Create a copy of DatetimeConverterEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParseEffectCopyWith<ParseEffect> get copyWith => _$ParseEffectCopyWithImpl<ParseEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParseEffect&&(identical(other.input, input) || other.input == input)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,input,type);

@override
String toString() {
  return 'DatetimeConverterEffect.parse(input: $input, type: $type)';
}


}

/// @nodoc
abstract mixin class $ParseEffectCopyWith<$Res> implements $DatetimeConverterEffectCopyWith<$Res> {
  factory $ParseEffectCopyWith(ParseEffect value, $Res Function(ParseEffect) _then) = _$ParseEffectCopyWithImpl;
@useResult
$Res call({
 String input, InputType type
});




}
/// @nodoc
class _$ParseEffectCopyWithImpl<$Res>
    implements $ParseEffectCopyWith<$Res> {
  _$ParseEffectCopyWithImpl(this._self, this._then);

  final ParseEffect _self;
  final $Res Function(ParseEffect) _then;

/// Create a copy of DatetimeConverterEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,Object? type = null,}) {
  return _then(ParseEffect(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InputType,
  ));
}


}

/// @nodoc


class SetInitialDatetimeEffect implements DatetimeConverterEffect {
  const SetInitialDatetimeEffect(this.datetime);
  

 final  DateTime datetime;

/// Create a copy of DatetimeConverterEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetInitialDatetimeEffectCopyWith<SetInitialDatetimeEffect> get copyWith => _$SetInitialDatetimeEffectCopyWithImpl<SetInitialDatetimeEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetInitialDatetimeEffect&&(identical(other.datetime, datetime) || other.datetime == datetime));
}


@override
int get hashCode => Object.hash(runtimeType,datetime);

@override
String toString() {
  return 'DatetimeConverterEffect.setInitialDatetime(datetime: $datetime)';
}


}

/// @nodoc
abstract mixin class $SetInitialDatetimeEffectCopyWith<$Res> implements $DatetimeConverterEffectCopyWith<$Res> {
  factory $SetInitialDatetimeEffectCopyWith(SetInitialDatetimeEffect value, $Res Function(SetInitialDatetimeEffect) _then) = _$SetInitialDatetimeEffectCopyWithImpl;
@useResult
$Res call({
 DateTime datetime
});




}
/// @nodoc
class _$SetInitialDatetimeEffectCopyWithImpl<$Res>
    implements $SetInitialDatetimeEffectCopyWith<$Res> {
  _$SetInitialDatetimeEffectCopyWithImpl(this._self, this._then);

  final SetInitialDatetimeEffect _self;
  final $Res Function(SetInitialDatetimeEffect) _then;

/// Create a copy of DatetimeConverterEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? datetime = null,}) {
  return _then(SetInitialDatetimeEffect(
null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
