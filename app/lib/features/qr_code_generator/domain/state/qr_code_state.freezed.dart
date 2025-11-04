// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QrCodeState {

 String get input; ErrorCorrectionLevel get correctionLevel; ExportType get exportType; QrCodeVisualData get visualData;@Assert('exportDensity > 0') int get exportSize;
/// Create a copy of QrCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeStateCopyWith<QrCodeState> get copyWith => _$QrCodeStateCopyWithImpl<QrCodeState>(this as QrCodeState, _$identity);

  /// Serializes this QrCodeState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeState&&(identical(other.input, input) || other.input == input)&&(identical(other.correctionLevel, correctionLevel) || other.correctionLevel == correctionLevel)&&(identical(other.exportType, exportType) || other.exportType == exportType)&&(identical(other.visualData, visualData) || other.visualData == visualData)&&(identical(other.exportSize, exportSize) || other.exportSize == exportSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,input,correctionLevel,exportType,visualData,exportSize);

@override
String toString() {
  return 'QrCodeState(input: $input, correctionLevel: $correctionLevel, exportType: $exportType, visualData: $visualData, exportSize: $exportSize)';
}


}

/// @nodoc
abstract mixin class $QrCodeStateCopyWith<$Res>  {
  factory $QrCodeStateCopyWith(QrCodeState value, $Res Function(QrCodeState) _then) = _$QrCodeStateCopyWithImpl;
@useResult
$Res call({
 String input, ErrorCorrectionLevel correctionLevel, ExportType exportType, QrCodeVisualData visualData,@Assert('exportDensity > 0') int exportSize
});


$QrCodeVisualDataCopyWith<$Res> get visualData;

}
/// @nodoc
class _$QrCodeStateCopyWithImpl<$Res>
    implements $QrCodeStateCopyWith<$Res> {
  _$QrCodeStateCopyWithImpl(this._self, this._then);

  final QrCodeState _self;
  final $Res Function(QrCodeState) _then;

/// Create a copy of QrCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? correctionLevel = null,Object? exportType = null,Object? visualData = null,Object? exportSize = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,correctionLevel: null == correctionLevel ? _self.correctionLevel : correctionLevel // ignore: cast_nullable_to_non_nullable
as ErrorCorrectionLevel,exportType: null == exportType ? _self.exportType : exportType // ignore: cast_nullable_to_non_nullable
as ExportType,visualData: null == visualData ? _self.visualData : visualData // ignore: cast_nullable_to_non_nullable
as QrCodeVisualData,exportSize: null == exportSize ? _self.exportSize : exportSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of QrCodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrCodeVisualDataCopyWith<$Res> get visualData {
  
  return $QrCodeVisualDataCopyWith<$Res>(_self.visualData, (value) {
    return _then(_self.copyWith(visualData: value));
  });
}
}


/// Adds pattern-matching-related methods to [QrCodeState].
extension QrCodeStatePatterns on QrCodeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrCodeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrCodeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrCodeState value)  $default,){
final _that = this;
switch (_that) {
case _QrCodeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrCodeState value)?  $default,){
final _that = this;
switch (_that) {
case _QrCodeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String input,  ErrorCorrectionLevel correctionLevel,  ExportType exportType,  QrCodeVisualData visualData, @Assert('exportDensity > 0')  int exportSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrCodeState() when $default != null:
return $default(_that.input,_that.correctionLevel,_that.exportType,_that.visualData,_that.exportSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String input,  ErrorCorrectionLevel correctionLevel,  ExportType exportType,  QrCodeVisualData visualData, @Assert('exportDensity > 0')  int exportSize)  $default,) {final _that = this;
switch (_that) {
case _QrCodeState():
return $default(_that.input,_that.correctionLevel,_that.exportType,_that.visualData,_that.exportSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String input,  ErrorCorrectionLevel correctionLevel,  ExportType exportType,  QrCodeVisualData visualData, @Assert('exportDensity > 0')  int exportSize)?  $default,) {final _that = this;
switch (_that) {
case _QrCodeState() when $default != null:
return $default(_that.input,_that.correctionLevel,_that.exportType,_that.visualData,_that.exportSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrCodeState extends QrCodeState {
  const _QrCodeState({required this.input, required this.correctionLevel, required this.exportType, required this.visualData, @Assert('exportDensity > 0') this.exportSize = 1024}): super._();
  factory _QrCodeState.fromJson(Map<String, dynamic> json) => _$QrCodeStateFromJson(json);

@override final  String input;
@override final  ErrorCorrectionLevel correctionLevel;
@override final  ExportType exportType;
@override final  QrCodeVisualData visualData;
@override@JsonKey()@Assert('exportDensity > 0') final  int exportSize;

/// Create a copy of QrCodeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrCodeStateCopyWith<_QrCodeState> get copyWith => __$QrCodeStateCopyWithImpl<_QrCodeState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrCodeStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrCodeState&&(identical(other.input, input) || other.input == input)&&(identical(other.correctionLevel, correctionLevel) || other.correctionLevel == correctionLevel)&&(identical(other.exportType, exportType) || other.exportType == exportType)&&(identical(other.visualData, visualData) || other.visualData == visualData)&&(identical(other.exportSize, exportSize) || other.exportSize == exportSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,input,correctionLevel,exportType,visualData,exportSize);

@override
String toString() {
  return 'QrCodeState(input: $input, correctionLevel: $correctionLevel, exportType: $exportType, visualData: $visualData, exportSize: $exportSize)';
}


}

/// @nodoc
abstract mixin class _$QrCodeStateCopyWith<$Res> implements $QrCodeStateCopyWith<$Res> {
  factory _$QrCodeStateCopyWith(_QrCodeState value, $Res Function(_QrCodeState) _then) = __$QrCodeStateCopyWithImpl;
@override @useResult
$Res call({
 String input, ErrorCorrectionLevel correctionLevel, ExportType exportType, QrCodeVisualData visualData,@Assert('exportDensity > 0') int exportSize
});


@override $QrCodeVisualDataCopyWith<$Res> get visualData;

}
/// @nodoc
class __$QrCodeStateCopyWithImpl<$Res>
    implements _$QrCodeStateCopyWith<$Res> {
  __$QrCodeStateCopyWithImpl(this._self, this._then);

  final _QrCodeState _self;
  final $Res Function(_QrCodeState) _then;

/// Create a copy of QrCodeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? correctionLevel = null,Object? exportType = null,Object? visualData = null,Object? exportSize = null,}) {
  return _then(_QrCodeState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,correctionLevel: null == correctionLevel ? _self.correctionLevel : correctionLevel // ignore: cast_nullable_to_non_nullable
as ErrorCorrectionLevel,exportType: null == exportType ? _self.exportType : exportType // ignore: cast_nullable_to_non_nullable
as ExportType,visualData: null == visualData ? _self.visualData : visualData // ignore: cast_nullable_to_non_nullable
as QrCodeVisualData,exportSize: null == exportSize ? _self.exportSize : exportSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of QrCodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrCodeVisualDataCopyWith<$Res> get visualData {
  
  return $QrCodeVisualDataCopyWith<$Res>(_self.visualData, (value) {
    return _then(_self.copyWith(visualData: value));
  });
}
}


/// @nodoc
mixin _$QrCodeVisualData {

@ColorConverter() Color get backgroundColor;@ColorConverter() Color get foregroundColor; QrCodeShape get shape;@EdgeInsetsConverter() EdgeInsets get paddings;
/// Create a copy of QrCodeVisualData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeVisualDataCopyWith<QrCodeVisualData> get copyWith => _$QrCodeVisualDataCopyWithImpl<QrCodeVisualData>(this as QrCodeVisualData, _$identity);

  /// Serializes this QrCodeVisualData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeVisualData&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.foregroundColor, foregroundColor) || other.foregroundColor == foregroundColor)&&(identical(other.shape, shape) || other.shape == shape)&&(identical(other.paddings, paddings) || other.paddings == paddings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backgroundColor,foregroundColor,shape,paddings);

@override
String toString() {
  return 'QrCodeVisualData(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, shape: $shape, paddings: $paddings)';
}


}

/// @nodoc
abstract mixin class $QrCodeVisualDataCopyWith<$Res>  {
  factory $QrCodeVisualDataCopyWith(QrCodeVisualData value, $Res Function(QrCodeVisualData) _then) = _$QrCodeVisualDataCopyWithImpl;
@useResult
$Res call({
@ColorConverter() Color backgroundColor,@ColorConverter() Color foregroundColor, QrCodeShape shape,@EdgeInsetsConverter() EdgeInsets paddings
});




}
/// @nodoc
class _$QrCodeVisualDataCopyWithImpl<$Res>
    implements $QrCodeVisualDataCopyWith<$Res> {
  _$QrCodeVisualDataCopyWithImpl(this._self, this._then);

  final QrCodeVisualData _self;
  final $Res Function(QrCodeVisualData) _then;

/// Create a copy of QrCodeVisualData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backgroundColor = null,Object? foregroundColor = null,Object? shape = null,Object? paddings = null,}) {
  return _then(_self.copyWith(
backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,foregroundColor: null == foregroundColor ? _self.foregroundColor : foregroundColor // ignore: cast_nullable_to_non_nullable
as Color,shape: null == shape ? _self.shape : shape // ignore: cast_nullable_to_non_nullable
as QrCodeShape,paddings: null == paddings ? _self.paddings : paddings // ignore: cast_nullable_to_non_nullable
as EdgeInsets,
  ));
}

}


/// Adds pattern-matching-related methods to [QrCodeVisualData].
extension QrCodeVisualDataPatterns on QrCodeVisualData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrCodeVisualData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrCodeVisualData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrCodeVisualData value)  $default,){
final _that = this;
switch (_that) {
case _QrCodeVisualData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrCodeVisualData value)?  $default,){
final _that = this;
switch (_that) {
case _QrCodeVisualData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@ColorConverter()  Color backgroundColor, @ColorConverter()  Color foregroundColor,  QrCodeShape shape, @EdgeInsetsConverter()  EdgeInsets paddings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrCodeVisualData() when $default != null:
return $default(_that.backgroundColor,_that.foregroundColor,_that.shape,_that.paddings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@ColorConverter()  Color backgroundColor, @ColorConverter()  Color foregroundColor,  QrCodeShape shape, @EdgeInsetsConverter()  EdgeInsets paddings)  $default,) {final _that = this;
switch (_that) {
case _QrCodeVisualData():
return $default(_that.backgroundColor,_that.foregroundColor,_that.shape,_that.paddings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@ColorConverter()  Color backgroundColor, @ColorConverter()  Color foregroundColor,  QrCodeShape shape, @EdgeInsetsConverter()  EdgeInsets paddings)?  $default,) {final _that = this;
switch (_that) {
case _QrCodeVisualData() when $default != null:
return $default(_that.backgroundColor,_that.foregroundColor,_that.shape,_that.paddings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrCodeVisualData implements QrCodeVisualData {
  const _QrCodeVisualData({@ColorConverter() required this.backgroundColor, @ColorConverter() required this.foregroundColor, required this.shape, @EdgeInsetsConverter() required this.paddings});
  factory _QrCodeVisualData.fromJson(Map<String, dynamic> json) => _$QrCodeVisualDataFromJson(json);

@override@ColorConverter() final  Color backgroundColor;
@override@ColorConverter() final  Color foregroundColor;
@override final  QrCodeShape shape;
@override@EdgeInsetsConverter() final  EdgeInsets paddings;

/// Create a copy of QrCodeVisualData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrCodeVisualDataCopyWith<_QrCodeVisualData> get copyWith => __$QrCodeVisualDataCopyWithImpl<_QrCodeVisualData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrCodeVisualDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrCodeVisualData&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.foregroundColor, foregroundColor) || other.foregroundColor == foregroundColor)&&(identical(other.shape, shape) || other.shape == shape)&&(identical(other.paddings, paddings) || other.paddings == paddings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backgroundColor,foregroundColor,shape,paddings);

@override
String toString() {
  return 'QrCodeVisualData(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, shape: $shape, paddings: $paddings)';
}


}

/// @nodoc
abstract mixin class _$QrCodeVisualDataCopyWith<$Res> implements $QrCodeVisualDataCopyWith<$Res> {
  factory _$QrCodeVisualDataCopyWith(_QrCodeVisualData value, $Res Function(_QrCodeVisualData) _then) = __$QrCodeVisualDataCopyWithImpl;
@override @useResult
$Res call({
@ColorConverter() Color backgroundColor,@ColorConverter() Color foregroundColor, QrCodeShape shape,@EdgeInsetsConverter() EdgeInsets paddings
});




}
/// @nodoc
class __$QrCodeVisualDataCopyWithImpl<$Res>
    implements _$QrCodeVisualDataCopyWith<$Res> {
  __$QrCodeVisualDataCopyWithImpl(this._self, this._then);

  final _QrCodeVisualData _self;
  final $Res Function(_QrCodeVisualData) _then;

/// Create a copy of QrCodeVisualData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backgroundColor = null,Object? foregroundColor = null,Object? shape = null,Object? paddings = null,}) {
  return _then(_QrCodeVisualData(
backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,foregroundColor: null == foregroundColor ? _self.foregroundColor : foregroundColor // ignore: cast_nullable_to_non_nullable
as Color,shape: null == shape ? _self.shape : shape // ignore: cast_nullable_to_non_nullable
as QrCodeShape,paddings: null == paddings ? _self.paddings : paddings // ignore: cast_nullable_to_non_nullable
as EdgeInsets,
  ));
}


}

// dart format on
