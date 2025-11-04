// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetime_converter_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DatetimeConverterMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatetimeConverterMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatetimeConverterMessage()';
}


}

/// @nodoc
class $DatetimeConverterMessageCopyWith<$Res>  {
$DatetimeConverterMessageCopyWith(DatetimeConverterMessage _, $Res Function(DatetimeConverterMessage) __);
}


/// Adds pattern-matching-related methods to [DatetimeConverterMessage].
extension DatetimeConverterMessagePatterns on DatetimeConverterMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateInputMessage value)?  updateInput,TResult Function( UpdateDatetimeMessage value)?  updateDatetime,TResult Function( UpdateInputTypeMessage value)?  updateInputType,TResult Function( UpdateDatetimeFormatMessage value)?  updateDatetimeFormat,TResult Function( ClearMessage value)?  clear,TResult Function( GetNowMessage value)?  getNow,TResult Function( SetNowMessage value)?  setNow,TResult Function( SetInitialDatetimeMessage value)?  setInitialDatetime,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateInputMessage() when updateInput != null:
return updateInput(_that);case UpdateDatetimeMessage() when updateDatetime != null:
return updateDatetime(_that);case UpdateInputTypeMessage() when updateInputType != null:
return updateInputType(_that);case UpdateDatetimeFormatMessage() when updateDatetimeFormat != null:
return updateDatetimeFormat(_that);case ClearMessage() when clear != null:
return clear(_that);case GetNowMessage() when getNow != null:
return getNow(_that);case SetNowMessage() when setNow != null:
return setNow(_that);case SetInitialDatetimeMessage() when setInitialDatetime != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateInputMessage value)  updateInput,required TResult Function( UpdateDatetimeMessage value)  updateDatetime,required TResult Function( UpdateInputTypeMessage value)  updateInputType,required TResult Function( UpdateDatetimeFormatMessage value)  updateDatetimeFormat,required TResult Function( ClearMessage value)  clear,required TResult Function( GetNowMessage value)  getNow,required TResult Function( SetNowMessage value)  setNow,required TResult Function( SetInitialDatetimeMessage value)  setInitialDatetime,}){
final _that = this;
switch (_that) {
case UpdateInputMessage():
return updateInput(_that);case UpdateDatetimeMessage():
return updateDatetime(_that);case UpdateInputTypeMessage():
return updateInputType(_that);case UpdateDatetimeFormatMessage():
return updateDatetimeFormat(_that);case ClearMessage():
return clear(_that);case GetNowMessage():
return getNow(_that);case SetNowMessage():
return setNow(_that);case SetInitialDatetimeMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateInputMessage value)?  updateInput,TResult? Function( UpdateDatetimeMessage value)?  updateDatetime,TResult? Function( UpdateInputTypeMessage value)?  updateInputType,TResult? Function( UpdateDatetimeFormatMessage value)?  updateDatetimeFormat,TResult? Function( ClearMessage value)?  clear,TResult? Function( GetNowMessage value)?  getNow,TResult? Function( SetNowMessage value)?  setNow,TResult? Function( SetInitialDatetimeMessage value)?  setInitialDatetime,}){
final _that = this;
switch (_that) {
case UpdateInputMessage() when updateInput != null:
return updateInput(_that);case UpdateDatetimeMessage() when updateDatetime != null:
return updateDatetime(_that);case UpdateInputTypeMessage() when updateInputType != null:
return updateInputType(_that);case UpdateDatetimeFormatMessage() when updateDatetimeFormat != null:
return updateDatetimeFormat(_that);case ClearMessage() when clear != null:
return clear(_that);case GetNowMessage() when getNow != null:
return getNow(_that);case SetNowMessage() when setNow != null:
return setNow(_that);case SetInitialDatetimeMessage() when setInitialDatetime != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input)?  updateInput,TResult Function( TZDateTime datetime)?  updateDatetime,TResult Function( InputType type)?  updateInputType,TResult Function( DatetimeFormat format)?  updateDatetimeFormat,TResult Function()?  clear,TResult Function()?  getNow,TResult Function( TZDateTime datetime)?  setNow,TResult Function( TZDateTime datetime)?  setInitialDatetime,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateInputMessage() when updateInput != null:
return updateInput(_that.input);case UpdateDatetimeMessage() when updateDatetime != null:
return updateDatetime(_that.datetime);case UpdateInputTypeMessage() when updateInputType != null:
return updateInputType(_that.type);case UpdateDatetimeFormatMessage() when updateDatetimeFormat != null:
return updateDatetimeFormat(_that.format);case ClearMessage() when clear != null:
return clear();case GetNowMessage() when getNow != null:
return getNow();case SetNowMessage() when setNow != null:
return setNow(_that.datetime);case SetInitialDatetimeMessage() when setInitialDatetime != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input)  updateInput,required TResult Function( TZDateTime datetime)  updateDatetime,required TResult Function( InputType type)  updateInputType,required TResult Function( DatetimeFormat format)  updateDatetimeFormat,required TResult Function()  clear,required TResult Function()  getNow,required TResult Function( TZDateTime datetime)  setNow,required TResult Function( TZDateTime datetime)  setInitialDatetime,}) {final _that = this;
switch (_that) {
case UpdateInputMessage():
return updateInput(_that.input);case UpdateDatetimeMessage():
return updateDatetime(_that.datetime);case UpdateInputTypeMessage():
return updateInputType(_that.type);case UpdateDatetimeFormatMessage():
return updateDatetimeFormat(_that.format);case ClearMessage():
return clear();case GetNowMessage():
return getNow();case SetNowMessage():
return setNow(_that.datetime);case SetInitialDatetimeMessage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input)?  updateInput,TResult? Function( TZDateTime datetime)?  updateDatetime,TResult? Function( InputType type)?  updateInputType,TResult? Function( DatetimeFormat format)?  updateDatetimeFormat,TResult? Function()?  clear,TResult? Function()?  getNow,TResult? Function( TZDateTime datetime)?  setNow,TResult? Function( TZDateTime datetime)?  setInitialDatetime,}) {final _that = this;
switch (_that) {
case UpdateInputMessage() when updateInput != null:
return updateInput(_that.input);case UpdateDatetimeMessage() when updateDatetime != null:
return updateDatetime(_that.datetime);case UpdateInputTypeMessage() when updateInputType != null:
return updateInputType(_that.type);case UpdateDatetimeFormatMessage() when updateDatetimeFormat != null:
return updateDatetimeFormat(_that.format);case ClearMessage() when clear != null:
return clear();case GetNowMessage() when getNow != null:
return getNow();case SetNowMessage() when setNow != null:
return setNow(_that.datetime);case SetInitialDatetimeMessage() when setInitialDatetime != null:
return setInitialDatetime(_that.datetime);case _:
  return null;

}
}

}

/// @nodoc


class UpdateInputMessage implements DatetimeConverterMessage {
  const UpdateInputMessage(this.input);
  

 final  String input;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInputMessageCopyWith<UpdateInputMessage> get copyWith => _$UpdateInputMessageCopyWithImpl<UpdateInputMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInputMessage&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DatetimeConverterMessage.updateInput(input: $input)';
}


}

/// @nodoc
abstract mixin class $UpdateInputMessageCopyWith<$Res> implements $DatetimeConverterMessageCopyWith<$Res> {
  factory $UpdateInputMessageCopyWith(UpdateInputMessage value, $Res Function(UpdateInputMessage) _then) = _$UpdateInputMessageCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$UpdateInputMessageCopyWithImpl<$Res>
    implements $UpdateInputMessageCopyWith<$Res> {
  _$UpdateInputMessageCopyWithImpl(this._self, this._then);

  final UpdateInputMessage _self;
  final $Res Function(UpdateInputMessage) _then;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(UpdateInputMessage(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateDatetimeMessage implements DatetimeConverterMessage {
  const UpdateDatetimeMessage(this.datetime);
  

 final  TZDateTime datetime;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDatetimeMessageCopyWith<UpdateDatetimeMessage> get copyWith => _$UpdateDatetimeMessageCopyWithImpl<UpdateDatetimeMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDatetimeMessage&&(identical(other.datetime, datetime) || other.datetime == datetime));
}


@override
int get hashCode => Object.hash(runtimeType,datetime);

@override
String toString() {
  return 'DatetimeConverterMessage.updateDatetime(datetime: $datetime)';
}


}

/// @nodoc
abstract mixin class $UpdateDatetimeMessageCopyWith<$Res> implements $DatetimeConverterMessageCopyWith<$Res> {
  factory $UpdateDatetimeMessageCopyWith(UpdateDatetimeMessage value, $Res Function(UpdateDatetimeMessage) _then) = _$UpdateDatetimeMessageCopyWithImpl;
@useResult
$Res call({
 TZDateTime datetime
});




}
/// @nodoc
class _$UpdateDatetimeMessageCopyWithImpl<$Res>
    implements $UpdateDatetimeMessageCopyWith<$Res> {
  _$UpdateDatetimeMessageCopyWithImpl(this._self, this._then);

  final UpdateDatetimeMessage _self;
  final $Res Function(UpdateDatetimeMessage) _then;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? datetime = null,}) {
  return _then(UpdateDatetimeMessage(
null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as TZDateTime,
  ));
}


}

/// @nodoc


class UpdateInputTypeMessage implements DatetimeConverterMessage {
  const UpdateInputTypeMessage(this.type);
  

 final  InputType type;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInputTypeMessageCopyWith<UpdateInputTypeMessage> get copyWith => _$UpdateInputTypeMessageCopyWithImpl<UpdateInputTypeMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInputTypeMessage&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'DatetimeConverterMessage.updateInputType(type: $type)';
}


}

/// @nodoc
abstract mixin class $UpdateInputTypeMessageCopyWith<$Res> implements $DatetimeConverterMessageCopyWith<$Res> {
  factory $UpdateInputTypeMessageCopyWith(UpdateInputTypeMessage value, $Res Function(UpdateInputTypeMessage) _then) = _$UpdateInputTypeMessageCopyWithImpl;
@useResult
$Res call({
 InputType type
});




}
/// @nodoc
class _$UpdateInputTypeMessageCopyWithImpl<$Res>
    implements $UpdateInputTypeMessageCopyWith<$Res> {
  _$UpdateInputTypeMessageCopyWithImpl(this._self, this._then);

  final UpdateInputTypeMessage _self;
  final $Res Function(UpdateInputTypeMessage) _then;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(UpdateInputTypeMessage(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InputType,
  ));
}


}

/// @nodoc


class UpdateDatetimeFormatMessage implements DatetimeConverterMessage {
  const UpdateDatetimeFormatMessage(this.format);
  

 final  DatetimeFormat format;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDatetimeFormatMessageCopyWith<UpdateDatetimeFormatMessage> get copyWith => _$UpdateDatetimeFormatMessageCopyWithImpl<UpdateDatetimeFormatMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDatetimeFormatMessage&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,format);

@override
String toString() {
  return 'DatetimeConverterMessage.updateDatetimeFormat(format: $format)';
}


}

/// @nodoc
abstract mixin class $UpdateDatetimeFormatMessageCopyWith<$Res> implements $DatetimeConverterMessageCopyWith<$Res> {
  factory $UpdateDatetimeFormatMessageCopyWith(UpdateDatetimeFormatMessage value, $Res Function(UpdateDatetimeFormatMessage) _then) = _$UpdateDatetimeFormatMessageCopyWithImpl;
@useResult
$Res call({
 DatetimeFormat format
});




}
/// @nodoc
class _$UpdateDatetimeFormatMessageCopyWithImpl<$Res>
    implements $UpdateDatetimeFormatMessageCopyWith<$Res> {
  _$UpdateDatetimeFormatMessageCopyWithImpl(this._self, this._then);

  final UpdateDatetimeFormatMessage _self;
  final $Res Function(UpdateDatetimeFormatMessage) _then;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? format = null,}) {
  return _then(UpdateDatetimeFormatMessage(
null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as DatetimeFormat,
  ));
}


}

/// @nodoc


class ClearMessage implements DatetimeConverterMessage {
  const ClearMessage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatetimeConverterMessage.clear()';
}


}




/// @nodoc


class GetNowMessage implements DatetimeConverterMessage {
  const GetNowMessage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNowMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatetimeConverterMessage.getNow()';
}


}




/// @nodoc


class SetNowMessage implements DatetimeConverterMessage {
  const SetNowMessage(this.datetime);
  

 final  TZDateTime datetime;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetNowMessageCopyWith<SetNowMessage> get copyWith => _$SetNowMessageCopyWithImpl<SetNowMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetNowMessage&&(identical(other.datetime, datetime) || other.datetime == datetime));
}


@override
int get hashCode => Object.hash(runtimeType,datetime);

@override
String toString() {
  return 'DatetimeConverterMessage.setNow(datetime: $datetime)';
}


}

/// @nodoc
abstract mixin class $SetNowMessageCopyWith<$Res> implements $DatetimeConverterMessageCopyWith<$Res> {
  factory $SetNowMessageCopyWith(SetNowMessage value, $Res Function(SetNowMessage) _then) = _$SetNowMessageCopyWithImpl;
@useResult
$Res call({
 TZDateTime datetime
});




}
/// @nodoc
class _$SetNowMessageCopyWithImpl<$Res>
    implements $SetNowMessageCopyWith<$Res> {
  _$SetNowMessageCopyWithImpl(this._self, this._then);

  final SetNowMessage _self;
  final $Res Function(SetNowMessage) _then;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? datetime = null,}) {
  return _then(SetNowMessage(
null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as TZDateTime,
  ));
}


}

/// @nodoc


class SetInitialDatetimeMessage implements DatetimeConverterMessage {
  const SetInitialDatetimeMessage(this.datetime);
  

 final  TZDateTime datetime;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetInitialDatetimeMessageCopyWith<SetInitialDatetimeMessage> get copyWith => _$SetInitialDatetimeMessageCopyWithImpl<SetInitialDatetimeMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetInitialDatetimeMessage&&(identical(other.datetime, datetime) || other.datetime == datetime));
}


@override
int get hashCode => Object.hash(runtimeType,datetime);

@override
String toString() {
  return 'DatetimeConverterMessage.setInitialDatetime(datetime: $datetime)';
}


}

/// @nodoc
abstract mixin class $SetInitialDatetimeMessageCopyWith<$Res> implements $DatetimeConverterMessageCopyWith<$Res> {
  factory $SetInitialDatetimeMessageCopyWith(SetInitialDatetimeMessage value, $Res Function(SetInitialDatetimeMessage) _then) = _$SetInitialDatetimeMessageCopyWithImpl;
@useResult
$Res call({
 TZDateTime datetime
});




}
/// @nodoc
class _$SetInitialDatetimeMessageCopyWithImpl<$Res>
    implements $SetInitialDatetimeMessageCopyWith<$Res> {
  _$SetInitialDatetimeMessageCopyWithImpl(this._self, this._then);

  final SetInitialDatetimeMessage _self;
  final $Res Function(SetInitialDatetimeMessage) _then;

/// Create a copy of DatetimeConverterMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? datetime = null,}) {
  return _then(SetInitialDatetimeMessage(
null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as TZDateTime,
  ));
}


}

// dart format on
