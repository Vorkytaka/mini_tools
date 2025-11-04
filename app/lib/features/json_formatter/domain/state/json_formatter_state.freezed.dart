// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_formatter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JsonFormatterState {

 String get input; String? get output; JsonOutputFormat get format; JsonPathState get jsonPath;
/// Create a copy of JsonFormatterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JsonFormatterStateCopyWith<JsonFormatterState> get copyWith => _$JsonFormatterStateCopyWithImpl<JsonFormatterState>(this as JsonFormatterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JsonFormatterState&&(identical(other.input, input) || other.input == input)&&(identical(other.output, output) || other.output == output)&&(identical(other.format, format) || other.format == format)&&(identical(other.jsonPath, jsonPath) || other.jsonPath == jsonPath));
}


@override
int get hashCode => Object.hash(runtimeType,input,output,format,jsonPath);

@override
String toString() {
  return 'JsonFormatterState(input: $input, output: $output, format: $format, jsonPath: $jsonPath)';
}


}

/// @nodoc
abstract mixin class $JsonFormatterStateCopyWith<$Res>  {
  factory $JsonFormatterStateCopyWith(JsonFormatterState value, $Res Function(JsonFormatterState) _then) = _$JsonFormatterStateCopyWithImpl;
@useResult
$Res call({
 String input, String? output, JsonOutputFormat format, JsonPathState jsonPath
});


$JsonPathStateCopyWith<$Res> get jsonPath;

}
/// @nodoc
class _$JsonFormatterStateCopyWithImpl<$Res>
    implements $JsonFormatterStateCopyWith<$Res> {
  _$JsonFormatterStateCopyWithImpl(this._self, this._then);

  final JsonFormatterState _self;
  final $Res Function(JsonFormatterState) _then;

/// Create a copy of JsonFormatterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? output = freezed,Object? format = null,Object? jsonPath = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String?,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as JsonOutputFormat,jsonPath: null == jsonPath ? _self.jsonPath : jsonPath // ignore: cast_nullable_to_non_nullable
as JsonPathState,
  ));
}
/// Create a copy of JsonFormatterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JsonPathStateCopyWith<$Res> get jsonPath {
  
  return $JsonPathStateCopyWith<$Res>(_self.jsonPath, (value) {
    return _then(_self.copyWith(jsonPath: value));
  });
}
}


/// Adds pattern-matching-related methods to [JsonFormatterState].
extension JsonFormatterStatePatterns on JsonFormatterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JsonFormatterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JsonFormatterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JsonFormatterState value)  $default,){
final _that = this;
switch (_that) {
case _JsonFormatterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JsonFormatterState value)?  $default,){
final _that = this;
switch (_that) {
case _JsonFormatterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String input,  String? output,  JsonOutputFormat format,  JsonPathState jsonPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JsonFormatterState() when $default != null:
return $default(_that.input,_that.output,_that.format,_that.jsonPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String input,  String? output,  JsonOutputFormat format,  JsonPathState jsonPath)  $default,) {final _that = this;
switch (_that) {
case _JsonFormatterState():
return $default(_that.input,_that.output,_that.format,_that.jsonPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String input,  String? output,  JsonOutputFormat format,  JsonPathState jsonPath)?  $default,) {final _that = this;
switch (_that) {
case _JsonFormatterState() when $default != null:
return $default(_that.input,_that.output,_that.format,_that.jsonPath);case _:
  return null;

}
}

}

/// @nodoc


class _JsonFormatterState implements JsonFormatterState {
  const _JsonFormatterState({required this.input, required this.output, required this.format, required this.jsonPath});
  

@override final  String input;
@override final  String? output;
@override final  JsonOutputFormat format;
@override final  JsonPathState jsonPath;

/// Create a copy of JsonFormatterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JsonFormatterStateCopyWith<_JsonFormatterState> get copyWith => __$JsonFormatterStateCopyWithImpl<_JsonFormatterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JsonFormatterState&&(identical(other.input, input) || other.input == input)&&(identical(other.output, output) || other.output == output)&&(identical(other.format, format) || other.format == format)&&(identical(other.jsonPath, jsonPath) || other.jsonPath == jsonPath));
}


@override
int get hashCode => Object.hash(runtimeType,input,output,format,jsonPath);

@override
String toString() {
  return 'JsonFormatterState(input: $input, output: $output, format: $format, jsonPath: $jsonPath)';
}


}

/// @nodoc
abstract mixin class _$JsonFormatterStateCopyWith<$Res> implements $JsonFormatterStateCopyWith<$Res> {
  factory _$JsonFormatterStateCopyWith(_JsonFormatterState value, $Res Function(_JsonFormatterState) _then) = __$JsonFormatterStateCopyWithImpl;
@override @useResult
$Res call({
 String input, String? output, JsonOutputFormat format, JsonPathState jsonPath
});


@override $JsonPathStateCopyWith<$Res> get jsonPath;

}
/// @nodoc
class __$JsonFormatterStateCopyWithImpl<$Res>
    implements _$JsonFormatterStateCopyWith<$Res> {
  __$JsonFormatterStateCopyWithImpl(this._self, this._then);

  final _JsonFormatterState _self;
  final $Res Function(_JsonFormatterState) _then;

/// Create a copy of JsonFormatterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? output = freezed,Object? format = null,Object? jsonPath = null,}) {
  return _then(_JsonFormatterState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String?,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as JsonOutputFormat,jsonPath: null == jsonPath ? _self.jsonPath : jsonPath // ignore: cast_nullable_to_non_nullable
as JsonPathState,
  ));
}

/// Create a copy of JsonFormatterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JsonPathStateCopyWith<$Res> get jsonPath {
  
  return $JsonPathStateCopyWith<$Res>(_self.jsonPath, (value) {
    return _then(_self.copyWith(jsonPath: value));
  });
}
}

/// @nodoc
mixin _$JsonPathState {

 String get input; JsonPath? get value;
/// Create a copy of JsonPathState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JsonPathStateCopyWith<JsonPathState> get copyWith => _$JsonPathStateCopyWithImpl<JsonPathState>(this as JsonPathState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JsonPathState&&(identical(other.input, input) || other.input == input)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,input,value);

@override
String toString() {
  return 'JsonPathState(input: $input, value: $value)';
}


}

/// @nodoc
abstract mixin class $JsonPathStateCopyWith<$Res>  {
  factory $JsonPathStateCopyWith(JsonPathState value, $Res Function(JsonPathState) _then) = _$JsonPathStateCopyWithImpl;
@useResult
$Res call({
 String input, JsonPath? value
});




}
/// @nodoc
class _$JsonPathStateCopyWithImpl<$Res>
    implements $JsonPathStateCopyWith<$Res> {
  _$JsonPathStateCopyWithImpl(this._self, this._then);

  final JsonPathState _self;
  final $Res Function(JsonPathState) _then;

/// Create a copy of JsonPathState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as JsonPath?,
  ));
}

}


/// Adds pattern-matching-related methods to [JsonPathState].
extension JsonPathStatePatterns on JsonPathState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JsonPathState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JsonPathState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JsonPathState value)  $default,){
final _that = this;
switch (_that) {
case _JsonPathState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JsonPathState value)?  $default,){
final _that = this;
switch (_that) {
case _JsonPathState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String input,  JsonPath? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JsonPathState() when $default != null:
return $default(_that.input,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String input,  JsonPath? value)  $default,) {final _that = this;
switch (_that) {
case _JsonPathState():
return $default(_that.input,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String input,  JsonPath? value)?  $default,) {final _that = this;
switch (_that) {
case _JsonPathState() when $default != null:
return $default(_that.input,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _JsonPathState extends JsonPathState {
  const _JsonPathState({required this.input, required this.value}): super._();
  

@override final  String input;
@override final  JsonPath? value;

/// Create a copy of JsonPathState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JsonPathStateCopyWith<_JsonPathState> get copyWith => __$JsonPathStateCopyWithImpl<_JsonPathState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JsonPathState&&(identical(other.input, input) || other.input == input)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,input,value);

@override
String toString() {
  return 'JsonPathState(input: $input, value: $value)';
}


}

/// @nodoc
abstract mixin class _$JsonPathStateCopyWith<$Res> implements $JsonPathStateCopyWith<$Res> {
  factory _$JsonPathStateCopyWith(_JsonPathState value, $Res Function(_JsonPathState) _then) = __$JsonPathStateCopyWithImpl;
@override @useResult
$Res call({
 String input, JsonPath? value
});




}
/// @nodoc
class __$JsonPathStateCopyWithImpl<$Res>
    implements _$JsonPathStateCopyWith<$Res> {
  __$JsonPathStateCopyWithImpl(this._self, this._then);

  final _JsonPathState _self;
  final $Res Function(_JsonPathState) _then;

/// Create a copy of JsonPathState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? value = freezed,}) {
  return _then(_JsonPathState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as JsonPath?,
  ));
}


}

// dart format on
