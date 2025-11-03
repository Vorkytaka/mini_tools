// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_base_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateInputMessage {

 String get input;
/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInputMessageCopyWith<UpdateInputMessage> get copyWith => _$UpdateInputMessageCopyWithImpl<UpdateInputMessage>(this as UpdateInputMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInputMessage&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'UpdateInputMessage(input: $input)';
}


}

/// @nodoc
abstract mixin class $UpdateInputMessageCopyWith<$Res>  {
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

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateInputMessage].
extension UpdateInputMessagePatterns on UpdateInputMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateBase2Message value)?  base2,TResult Function( UpdateBase8Message value)?  base8,TResult Function( UpdateBase10Message value)?  base10,TResult Function( UpdateBase16Message value)?  base16,TResult Function( UpdateCustomMessage value)?  custom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateBase2Message() when base2 != null:
return base2(_that);case UpdateBase8Message() when base8 != null:
return base8(_that);case UpdateBase10Message() when base10 != null:
return base10(_that);case UpdateBase16Message() when base16 != null:
return base16(_that);case UpdateCustomMessage() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateBase2Message value)  base2,required TResult Function( UpdateBase8Message value)  base8,required TResult Function( UpdateBase10Message value)  base10,required TResult Function( UpdateBase16Message value)  base16,required TResult Function( UpdateCustomMessage value)  custom,}){
final _that = this;
switch (_that) {
case UpdateBase2Message():
return base2(_that);case UpdateBase8Message():
return base8(_that);case UpdateBase10Message():
return base10(_that);case UpdateBase16Message():
return base16(_that);case UpdateCustomMessage():
return custom(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateBase2Message value)?  base2,TResult? Function( UpdateBase8Message value)?  base8,TResult? Function( UpdateBase10Message value)?  base10,TResult? Function( UpdateBase16Message value)?  base16,TResult? Function( UpdateCustomMessage value)?  custom,}){
final _that = this;
switch (_that) {
case UpdateBase2Message() when base2 != null:
return base2(_that);case UpdateBase8Message() when base8 != null:
return base8(_that);case UpdateBase10Message() when base10 != null:
return base10(_that);case UpdateBase16Message() when base16 != null:
return base16(_that);case UpdateCustomMessage() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input)?  base2,TResult Function( String input)?  base8,TResult Function( String input)?  base10,TResult Function( String input)?  base16,TResult Function( String input)?  custom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateBase2Message() when base2 != null:
return base2(_that.input);case UpdateBase8Message() when base8 != null:
return base8(_that.input);case UpdateBase10Message() when base10 != null:
return base10(_that.input);case UpdateBase16Message() when base16 != null:
return base16(_that.input);case UpdateCustomMessage() when custom != null:
return custom(_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input)  base2,required TResult Function( String input)  base8,required TResult Function( String input)  base10,required TResult Function( String input)  base16,required TResult Function( String input)  custom,}) {final _that = this;
switch (_that) {
case UpdateBase2Message():
return base2(_that.input);case UpdateBase8Message():
return base8(_that.input);case UpdateBase10Message():
return base10(_that.input);case UpdateBase16Message():
return base16(_that.input);case UpdateCustomMessage():
return custom(_that.input);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input)?  base2,TResult? Function( String input)?  base8,TResult? Function( String input)?  base10,TResult? Function( String input)?  base16,TResult? Function( String input)?  custom,}) {final _that = this;
switch (_that) {
case UpdateBase2Message() when base2 != null:
return base2(_that.input);case UpdateBase8Message() when base8 != null:
return base8(_that.input);case UpdateBase10Message() when base10 != null:
return base10(_that.input);case UpdateBase16Message() when base16 != null:
return base16(_that.input);case UpdateCustomMessage() when custom != null:
return custom(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class UpdateBase2Message implements UpdateInputMessage {
  const UpdateBase2Message(this.input);
  

@override final  String input;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBase2MessageCopyWith<UpdateBase2Message> get copyWith => _$UpdateBase2MessageCopyWithImpl<UpdateBase2Message>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBase2Message&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'UpdateInputMessage.base2(input: $input)';
}


}

/// @nodoc
abstract mixin class $UpdateBase2MessageCopyWith<$Res> implements $UpdateInputMessageCopyWith<$Res> {
  factory $UpdateBase2MessageCopyWith(UpdateBase2Message value, $Res Function(UpdateBase2Message) _then) = _$UpdateBase2MessageCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class _$UpdateBase2MessageCopyWithImpl<$Res>
    implements $UpdateBase2MessageCopyWith<$Res> {
  _$UpdateBase2MessageCopyWithImpl(this._self, this._then);

  final UpdateBase2Message _self;
  final $Res Function(UpdateBase2Message) _then;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(UpdateBase2Message(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateBase8Message implements UpdateInputMessage {
  const UpdateBase8Message(this.input);
  

@override final  String input;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBase8MessageCopyWith<UpdateBase8Message> get copyWith => _$UpdateBase8MessageCopyWithImpl<UpdateBase8Message>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBase8Message&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'UpdateInputMessage.base8(input: $input)';
}


}

/// @nodoc
abstract mixin class $UpdateBase8MessageCopyWith<$Res> implements $UpdateInputMessageCopyWith<$Res> {
  factory $UpdateBase8MessageCopyWith(UpdateBase8Message value, $Res Function(UpdateBase8Message) _then) = _$UpdateBase8MessageCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class _$UpdateBase8MessageCopyWithImpl<$Res>
    implements $UpdateBase8MessageCopyWith<$Res> {
  _$UpdateBase8MessageCopyWithImpl(this._self, this._then);

  final UpdateBase8Message _self;
  final $Res Function(UpdateBase8Message) _then;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(UpdateBase8Message(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateBase10Message implements UpdateInputMessage {
  const UpdateBase10Message(this.input);
  

@override final  String input;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBase10MessageCopyWith<UpdateBase10Message> get copyWith => _$UpdateBase10MessageCopyWithImpl<UpdateBase10Message>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBase10Message&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'UpdateInputMessage.base10(input: $input)';
}


}

/// @nodoc
abstract mixin class $UpdateBase10MessageCopyWith<$Res> implements $UpdateInputMessageCopyWith<$Res> {
  factory $UpdateBase10MessageCopyWith(UpdateBase10Message value, $Res Function(UpdateBase10Message) _then) = _$UpdateBase10MessageCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class _$UpdateBase10MessageCopyWithImpl<$Res>
    implements $UpdateBase10MessageCopyWith<$Res> {
  _$UpdateBase10MessageCopyWithImpl(this._self, this._then);

  final UpdateBase10Message _self;
  final $Res Function(UpdateBase10Message) _then;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(UpdateBase10Message(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateBase16Message implements UpdateInputMessage {
  const UpdateBase16Message(this.input);
  

@override final  String input;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBase16MessageCopyWith<UpdateBase16Message> get copyWith => _$UpdateBase16MessageCopyWithImpl<UpdateBase16Message>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBase16Message&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'UpdateInputMessage.base16(input: $input)';
}


}

/// @nodoc
abstract mixin class $UpdateBase16MessageCopyWith<$Res> implements $UpdateInputMessageCopyWith<$Res> {
  factory $UpdateBase16MessageCopyWith(UpdateBase16Message value, $Res Function(UpdateBase16Message) _then) = _$UpdateBase16MessageCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class _$UpdateBase16MessageCopyWithImpl<$Res>
    implements $UpdateBase16MessageCopyWith<$Res> {
  _$UpdateBase16MessageCopyWithImpl(this._self, this._then);

  final UpdateBase16Message _self;
  final $Res Function(UpdateBase16Message) _then;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(UpdateBase16Message(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateCustomMessage implements UpdateInputMessage {
  const UpdateCustomMessage(this.input);
  

@override final  String input;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCustomMessageCopyWith<UpdateCustomMessage> get copyWith => _$UpdateCustomMessageCopyWithImpl<UpdateCustomMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCustomMessage&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'UpdateInputMessage.custom(input: $input)';
}


}

/// @nodoc
abstract mixin class $UpdateCustomMessageCopyWith<$Res> implements $UpdateInputMessageCopyWith<$Res> {
  factory $UpdateCustomMessageCopyWith(UpdateCustomMessage value, $Res Function(UpdateCustomMessage) _then) = _$UpdateCustomMessageCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class _$UpdateCustomMessageCopyWithImpl<$Res>
    implements $UpdateCustomMessageCopyWith<$Res> {
  _$UpdateCustomMessageCopyWithImpl(this._self, this._then);

  final UpdateCustomMessage _self;
  final $Res Function(UpdateCustomMessage) _then;

/// Create a copy of UpdateInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(UpdateCustomMessage(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UpdateCustomBaseMessage {

 int get base;
/// Create a copy of UpdateCustomBaseMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCustomBaseMessageCopyWith<UpdateCustomBaseMessage> get copyWith => _$UpdateCustomBaseMessageCopyWithImpl<UpdateCustomBaseMessage>(this as UpdateCustomBaseMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCustomBaseMessage&&(identical(other.base, base) || other.base == base));
}


@override
int get hashCode => Object.hash(runtimeType,base);

@override
String toString() {
  return 'UpdateCustomBaseMessage(base: $base)';
}


}

/// @nodoc
abstract mixin class $UpdateCustomBaseMessageCopyWith<$Res>  {
  factory $UpdateCustomBaseMessageCopyWith(UpdateCustomBaseMessage value, $Res Function(UpdateCustomBaseMessage) _then) = _$UpdateCustomBaseMessageCopyWithImpl;
@useResult
$Res call({
 int base
});




}
/// @nodoc
class _$UpdateCustomBaseMessageCopyWithImpl<$Res>
    implements $UpdateCustomBaseMessageCopyWith<$Res> {
  _$UpdateCustomBaseMessageCopyWithImpl(this._self, this._then);

  final UpdateCustomBaseMessage _self;
  final $Res Function(UpdateCustomBaseMessage) _then;

/// Create a copy of UpdateCustomBaseMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? base = null,}) {
  return _then(_self.copyWith(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCustomBaseMessage].
extension UpdateCustomBaseMessagePatterns on UpdateCustomBaseMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCustomBaseMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCustomBaseMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCustomBaseMessage value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCustomBaseMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCustomBaseMessage value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCustomBaseMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int base)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCustomBaseMessage() when $default != null:
return $default(_that.base);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int base)  $default,) {final _that = this;
switch (_that) {
case _UpdateCustomBaseMessage():
return $default(_that.base);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int base)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCustomBaseMessage() when $default != null:
return $default(_that.base);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateCustomBaseMessage implements UpdateCustomBaseMessage {
  const _UpdateCustomBaseMessage({required this.base}): assert(base >= 2 && base <= 36);
  

@override final  int base;

/// Create a copy of UpdateCustomBaseMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCustomBaseMessageCopyWith<_UpdateCustomBaseMessage> get copyWith => __$UpdateCustomBaseMessageCopyWithImpl<_UpdateCustomBaseMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCustomBaseMessage&&(identical(other.base, base) || other.base == base));
}


@override
int get hashCode => Object.hash(runtimeType,base);

@override
String toString() {
  return 'UpdateCustomBaseMessage(base: $base)';
}


}

/// @nodoc
abstract mixin class _$UpdateCustomBaseMessageCopyWith<$Res> implements $UpdateCustomBaseMessageCopyWith<$Res> {
  factory _$UpdateCustomBaseMessageCopyWith(_UpdateCustomBaseMessage value, $Res Function(_UpdateCustomBaseMessage) _then) = __$UpdateCustomBaseMessageCopyWithImpl;
@override @useResult
$Res call({
 int base
});




}
/// @nodoc
class __$UpdateCustomBaseMessageCopyWithImpl<$Res>
    implements _$UpdateCustomBaseMessageCopyWith<$Res> {
  __$UpdateCustomBaseMessageCopyWithImpl(this._self, this._then);

  final _UpdateCustomBaseMessage _self;
  final $Res Function(_UpdateCustomBaseMessage) _then;

/// Create a copy of UpdateCustomBaseMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? base = null,}) {
  return _then(_UpdateCustomBaseMessage(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SetStateMessage {

 NumberBaseState get state;
/// Create a copy of SetStateMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetStateMessageCopyWith<SetStateMessage> get copyWith => _$SetStateMessageCopyWithImpl<SetStateMessage>(this as SetStateMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetStateMessage&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'SetStateMessage(state: $state)';
}


}

/// @nodoc
abstract mixin class $SetStateMessageCopyWith<$Res>  {
  factory $SetStateMessageCopyWith(SetStateMessage value, $Res Function(SetStateMessage) _then) = _$SetStateMessageCopyWithImpl;
@useResult
$Res call({
 NumberBaseState state
});


$NumberBaseStateCopyWith<$Res> get state;

}
/// @nodoc
class _$SetStateMessageCopyWithImpl<$Res>
    implements $SetStateMessageCopyWith<$Res> {
  _$SetStateMessageCopyWithImpl(this._self, this._then);

  final SetStateMessage _self;
  final $Res Function(SetStateMessage) _then;

/// Create a copy of SetStateMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as NumberBaseState,
  ));
}
/// Create a copy of SetStateMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NumberBaseStateCopyWith<$Res> get state {
  
  return $NumberBaseStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}


/// Adds pattern-matching-related methods to [SetStateMessage].
extension SetStateMessagePatterns on SetStateMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetStateMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetStateMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetStateMessage value)  $default,){
final _that = this;
switch (_that) {
case _SetStateMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetStateMessage value)?  $default,){
final _that = this;
switch (_that) {
case _SetStateMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NumberBaseState state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetStateMessage() when $default != null:
return $default(_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NumberBaseState state)  $default,) {final _that = this;
switch (_that) {
case _SetStateMessage():
return $default(_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NumberBaseState state)?  $default,) {final _that = this;
switch (_that) {
case _SetStateMessage() when $default != null:
return $default(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _SetStateMessage implements SetStateMessage {
  const _SetStateMessage(this.state);
  

@override final  NumberBaseState state;

/// Create a copy of SetStateMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetStateMessageCopyWith<_SetStateMessage> get copyWith => __$SetStateMessageCopyWithImpl<_SetStateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetStateMessage&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'SetStateMessage(state: $state)';
}


}

/// @nodoc
abstract mixin class _$SetStateMessageCopyWith<$Res> implements $SetStateMessageCopyWith<$Res> {
  factory _$SetStateMessageCopyWith(_SetStateMessage value, $Res Function(_SetStateMessage) _then) = __$SetStateMessageCopyWithImpl;
@override @useResult
$Res call({
 NumberBaseState state
});


@override $NumberBaseStateCopyWith<$Res> get state;

}
/// @nodoc
class __$SetStateMessageCopyWithImpl<$Res>
    implements _$SetStateMessageCopyWith<$Res> {
  __$SetStateMessageCopyWithImpl(this._self, this._then);

  final _SetStateMessage _self;
  final $Res Function(_SetStateMessage) _then;

/// Create a copy of SetStateMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_SetStateMessage(
null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as NumberBaseState,
  ));
}

/// Create a copy of SetStateMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NumberBaseStateCopyWith<$Res> get state {
  
  return $NumberBaseStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

// dart format on
