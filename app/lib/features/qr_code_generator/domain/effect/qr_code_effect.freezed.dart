// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExportEffect {

 QrCode get code; QrCodeVisualData get visualData; int get exportSize;
/// Create a copy of ExportEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExportEffectCopyWith<ExportEffect> get copyWith => _$ExportEffectCopyWithImpl<ExportEffect>(this as ExportEffect, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExportEffect&&(identical(other.code, code) || other.code == code)&&(identical(other.visualData, visualData) || other.visualData == visualData)&&(identical(other.exportSize, exportSize) || other.exportSize == exportSize));
}


@override
int get hashCode => Object.hash(runtimeType,code,visualData,exportSize);

@override
String toString() {
  return 'ExportEffect(code: $code, visualData: $visualData, exportSize: $exportSize)';
}


}

/// @nodoc
abstract mixin class $ExportEffectCopyWith<$Res>  {
  factory $ExportEffectCopyWith(ExportEffect value, $Res Function(ExportEffect) _then) = _$ExportEffectCopyWithImpl;
@useResult
$Res call({
 QrCode code, QrCodeVisualData visualData, int exportSize
});


$QrCodeVisualDataCopyWith<$Res> get visualData;

}
/// @nodoc
class _$ExportEffectCopyWithImpl<$Res>
    implements $ExportEffectCopyWith<$Res> {
  _$ExportEffectCopyWithImpl(this._self, this._then);

  final ExportEffect _self;
  final $Res Function(ExportEffect) _then;

/// Create a copy of ExportEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? visualData = null,Object? exportSize = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as QrCode,visualData: null == visualData ? _self.visualData : visualData // ignore: cast_nullable_to_non_nullable
as QrCodeVisualData,exportSize: null == exportSize ? _self.exportSize : exportSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ExportEffect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrCodeVisualDataCopyWith<$Res> get visualData {
  
  return $QrCodeVisualDataCopyWith<$Res>(_self.visualData, (value) {
    return _then(_self.copyWith(visualData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExportEffect].
extension ExportEffectPatterns on ExportEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SaveToFileEffect value)?  saveToFile,TResult Function( CopyToClipboardEffect value)?  copyToClipboard,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SaveToFileEffect() when saveToFile != null:
return saveToFile(_that);case CopyToClipboardEffect() when copyToClipboard != null:
return copyToClipboard(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SaveToFileEffect value)  saveToFile,required TResult Function( CopyToClipboardEffect value)  copyToClipboard,}){
final _that = this;
switch (_that) {
case SaveToFileEffect():
return saveToFile(_that);case CopyToClipboardEffect():
return copyToClipboard(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SaveToFileEffect value)?  saveToFile,TResult? Function( CopyToClipboardEffect value)?  copyToClipboard,}){
final _that = this;
switch (_that) {
case SaveToFileEffect() when saveToFile != null:
return saveToFile(_that);case CopyToClipboardEffect() when copyToClipboard != null:
return copyToClipboard(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( QrCode code,  ExportType exportType,  QrCodeVisualData visualData,  int exportSize)?  saveToFile,TResult Function( QrCode code,  QrCodeVisualData visualData,  int exportSize)?  copyToClipboard,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SaveToFileEffect() when saveToFile != null:
return saveToFile(_that.code,_that.exportType,_that.visualData,_that.exportSize);case CopyToClipboardEffect() when copyToClipboard != null:
return copyToClipboard(_that.code,_that.visualData,_that.exportSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( QrCode code,  ExportType exportType,  QrCodeVisualData visualData,  int exportSize)  saveToFile,required TResult Function( QrCode code,  QrCodeVisualData visualData,  int exportSize)  copyToClipboard,}) {final _that = this;
switch (_that) {
case SaveToFileEffect():
return saveToFile(_that.code,_that.exportType,_that.visualData,_that.exportSize);case CopyToClipboardEffect():
return copyToClipboard(_that.code,_that.visualData,_that.exportSize);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( QrCode code,  ExportType exportType,  QrCodeVisualData visualData,  int exportSize)?  saveToFile,TResult? Function( QrCode code,  QrCodeVisualData visualData,  int exportSize)?  copyToClipboard,}) {final _that = this;
switch (_that) {
case SaveToFileEffect() when saveToFile != null:
return saveToFile(_that.code,_that.exportType,_that.visualData,_that.exportSize);case CopyToClipboardEffect() when copyToClipboard != null:
return copyToClipboard(_that.code,_that.visualData,_that.exportSize);case _:
  return null;

}
}

}

/// @nodoc


class SaveToFileEffect implements ExportEffect {
  const SaveToFileEffect({required this.code, required this.exportType, required this.visualData, required this.exportSize});
  

@override final  QrCode code;
 final  ExportType exportType;
@override final  QrCodeVisualData visualData;
@override final  int exportSize;

/// Create a copy of ExportEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveToFileEffectCopyWith<SaveToFileEffect> get copyWith => _$SaveToFileEffectCopyWithImpl<SaveToFileEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveToFileEffect&&(identical(other.code, code) || other.code == code)&&(identical(other.exportType, exportType) || other.exportType == exportType)&&(identical(other.visualData, visualData) || other.visualData == visualData)&&(identical(other.exportSize, exportSize) || other.exportSize == exportSize));
}


@override
int get hashCode => Object.hash(runtimeType,code,exportType,visualData,exportSize);

@override
String toString() {
  return 'ExportEffect.saveToFile(code: $code, exportType: $exportType, visualData: $visualData, exportSize: $exportSize)';
}


}

/// @nodoc
abstract mixin class $SaveToFileEffectCopyWith<$Res> implements $ExportEffectCopyWith<$Res> {
  factory $SaveToFileEffectCopyWith(SaveToFileEffect value, $Res Function(SaveToFileEffect) _then) = _$SaveToFileEffectCopyWithImpl;
@override @useResult
$Res call({
 QrCode code, ExportType exportType, QrCodeVisualData visualData, int exportSize
});


@override $QrCodeVisualDataCopyWith<$Res> get visualData;

}
/// @nodoc
class _$SaveToFileEffectCopyWithImpl<$Res>
    implements $SaveToFileEffectCopyWith<$Res> {
  _$SaveToFileEffectCopyWithImpl(this._self, this._then);

  final SaveToFileEffect _self;
  final $Res Function(SaveToFileEffect) _then;

/// Create a copy of ExportEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? exportType = null,Object? visualData = null,Object? exportSize = null,}) {
  return _then(SaveToFileEffect(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as QrCode,exportType: null == exportType ? _self.exportType : exportType // ignore: cast_nullable_to_non_nullable
as ExportType,visualData: null == visualData ? _self.visualData : visualData // ignore: cast_nullable_to_non_nullable
as QrCodeVisualData,exportSize: null == exportSize ? _self.exportSize : exportSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ExportEffect
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


class CopyToClipboardEffect implements ExportEffect {
  const CopyToClipboardEffect({required this.code, required this.visualData, required this.exportSize});
  

@override final  QrCode code;
@override final  QrCodeVisualData visualData;
@override final  int exportSize;

/// Create a copy of ExportEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CopyToClipboardEffectCopyWith<CopyToClipboardEffect> get copyWith => _$CopyToClipboardEffectCopyWithImpl<CopyToClipboardEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CopyToClipboardEffect&&(identical(other.code, code) || other.code == code)&&(identical(other.visualData, visualData) || other.visualData == visualData)&&(identical(other.exportSize, exportSize) || other.exportSize == exportSize));
}


@override
int get hashCode => Object.hash(runtimeType,code,visualData,exportSize);

@override
String toString() {
  return 'ExportEffect.copyToClipboard(code: $code, visualData: $visualData, exportSize: $exportSize)';
}


}

/// @nodoc
abstract mixin class $CopyToClipboardEffectCopyWith<$Res> implements $ExportEffectCopyWith<$Res> {
  factory $CopyToClipboardEffectCopyWith(CopyToClipboardEffect value, $Res Function(CopyToClipboardEffect) _then) = _$CopyToClipboardEffectCopyWithImpl;
@override @useResult
$Res call({
 QrCode code, QrCodeVisualData visualData, int exportSize
});


@override $QrCodeVisualDataCopyWith<$Res> get visualData;

}
/// @nodoc
class _$CopyToClipboardEffectCopyWithImpl<$Res>
    implements $CopyToClipboardEffectCopyWith<$Res> {
  _$CopyToClipboardEffectCopyWithImpl(this._self, this._then);

  final CopyToClipboardEffect _self;
  final $Res Function(CopyToClipboardEffect) _then;

/// Create a copy of ExportEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? visualData = null,Object? exportSize = null,}) {
  return _then(CopyToClipboardEffect(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as QrCode,visualData: null == visualData ? _self.visualData : visualData // ignore: cast_nullable_to_non_nullable
as QrCodeVisualData,exportSize: null == exportSize ? _self.exportSize : exportSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ExportEffect
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
mixin _$SaveStateEffect {

 QrCodeState get state;
/// Create a copy of SaveStateEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveStateEffectCopyWith<SaveStateEffect> get copyWith => _$SaveStateEffectCopyWithImpl<SaveStateEffect>(this as SaveStateEffect, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveStateEffect&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'SaveStateEffect(state: $state)';
}


}

/// @nodoc
abstract mixin class $SaveStateEffectCopyWith<$Res>  {
  factory $SaveStateEffectCopyWith(SaveStateEffect value, $Res Function(SaveStateEffect) _then) = _$SaveStateEffectCopyWithImpl;
@useResult
$Res call({
 QrCodeState state
});


$QrCodeStateCopyWith<$Res> get state;

}
/// @nodoc
class _$SaveStateEffectCopyWithImpl<$Res>
    implements $SaveStateEffectCopyWith<$Res> {
  _$SaveStateEffectCopyWithImpl(this._self, this._then);

  final SaveStateEffect _self;
  final $Res Function(SaveStateEffect) _then;

/// Create a copy of SaveStateEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as QrCodeState,
  ));
}
/// Create a copy of SaveStateEffect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrCodeStateCopyWith<$Res> get state {
  
  return $QrCodeStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaveStateEffect].
extension SaveStateEffectPatterns on SaveStateEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveStateEffect value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveStateEffect() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveStateEffect value)  $default,){
final _that = this;
switch (_that) {
case _SaveStateEffect():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveStateEffect value)?  $default,){
final _that = this;
switch (_that) {
case _SaveStateEffect() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QrCodeState state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveStateEffect() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QrCodeState state)  $default,) {final _that = this;
switch (_that) {
case _SaveStateEffect():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QrCodeState state)?  $default,) {final _that = this;
switch (_that) {
case _SaveStateEffect() when $default != null:
return $default(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _SaveStateEffect implements SaveStateEffect {
  const _SaveStateEffect({required this.state});
  

@override final  QrCodeState state;

/// Create a copy of SaveStateEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveStateEffectCopyWith<_SaveStateEffect> get copyWith => __$SaveStateEffectCopyWithImpl<_SaveStateEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveStateEffect&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'SaveStateEffect(state: $state)';
}


}

/// @nodoc
abstract mixin class _$SaveStateEffectCopyWith<$Res> implements $SaveStateEffectCopyWith<$Res> {
  factory _$SaveStateEffectCopyWith(_SaveStateEffect value, $Res Function(_SaveStateEffect) _then) = __$SaveStateEffectCopyWithImpl;
@override @useResult
$Res call({
 QrCodeState state
});


@override $QrCodeStateCopyWith<$Res> get state;

}
/// @nodoc
class __$SaveStateEffectCopyWithImpl<$Res>
    implements _$SaveStateEffectCopyWith<$Res> {
  __$SaveStateEffectCopyWithImpl(this._self, this._then);

  final _SaveStateEffect _self;
  final $Res Function(_SaveStateEffect) _then;

/// Create a copy of SaveStateEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_SaveStateEffect(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as QrCodeState,
  ));
}

/// Create a copy of SaveStateEffect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrCodeStateCopyWith<$Res> get state {
  
  return $QrCodeStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc
mixin _$LoadStateEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadStateEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadStateEffect()';
}


}

/// @nodoc
class $LoadStateEffectCopyWith<$Res>  {
$LoadStateEffectCopyWith(LoadStateEffect _, $Res Function(LoadStateEffect) __);
}


/// Adds pattern-matching-related methods to [LoadStateEffect].
extension LoadStateEffectPatterns on LoadStateEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadStateEffect value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadStateEffect() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadStateEffect value)  $default,){
final _that = this;
switch (_that) {
case _LoadStateEffect():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadStateEffect value)?  $default,){
final _that = this;
switch (_that) {
case _LoadStateEffect() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadStateEffect() when $default != null:
return $default();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _LoadStateEffect():
return $default();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _LoadStateEffect() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc


class _LoadStateEffect implements LoadStateEffect {
  const _LoadStateEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadStateEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadStateEffect()';
}


}




// dart format on
