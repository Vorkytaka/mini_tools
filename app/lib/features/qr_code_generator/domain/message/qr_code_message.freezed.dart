// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QrCodeMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeMessage()';
}


}

/// @nodoc
class $QrCodeMessageCopyWith<$Res>  {
$QrCodeMessageCopyWith(QrCodeMessage _, $Res Function(QrCodeMessage) __);
}


/// Adds pattern-matching-related methods to [QrCodeMessage].
extension QrCodeMessagePatterns on QrCodeMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadedStateMessage value)?  loadedState,TResult Function( UpdateInputMessage value)?  updateInput,TResult Function( UpdateCorrectionLevelMessage value)?  updateCorrectionLevel,TResult Function( SaveToFileMessage value)?  saveToFile,TResult Function( UpdateExportTypeMessage value)?  updateExportType,TResult Function( CopyToClipboardMessage value)?  copyToClipboard,TResult Function( ShapeUpdateMessage value)?  shapeUpdate,TResult Function( PaddingUpdateMessage value)?  paddingUpdate,TResult Function( ForegroundColorUpdateMessage value)?  foregroundColorUpdate,TResult Function( BackgroundColorUpdateMessage value)?  backgroundColorUpdate,TResult Function( ExportSizeUpdateMessage value)?  exportSizeUpdate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadedStateMessage() when loadedState != null:
return loadedState(_that);case UpdateInputMessage() when updateInput != null:
return updateInput(_that);case UpdateCorrectionLevelMessage() when updateCorrectionLevel != null:
return updateCorrectionLevel(_that);case SaveToFileMessage() when saveToFile != null:
return saveToFile(_that);case UpdateExportTypeMessage() when updateExportType != null:
return updateExportType(_that);case CopyToClipboardMessage() when copyToClipboard != null:
return copyToClipboard(_that);case ShapeUpdateMessage() when shapeUpdate != null:
return shapeUpdate(_that);case PaddingUpdateMessage() when paddingUpdate != null:
return paddingUpdate(_that);case ForegroundColorUpdateMessage() when foregroundColorUpdate != null:
return foregroundColorUpdate(_that);case BackgroundColorUpdateMessage() when backgroundColorUpdate != null:
return backgroundColorUpdate(_that);case ExportSizeUpdateMessage() when exportSizeUpdate != null:
return exportSizeUpdate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadedStateMessage value)  loadedState,required TResult Function( UpdateInputMessage value)  updateInput,required TResult Function( UpdateCorrectionLevelMessage value)  updateCorrectionLevel,required TResult Function( SaveToFileMessage value)  saveToFile,required TResult Function( UpdateExportTypeMessage value)  updateExportType,required TResult Function( CopyToClipboardMessage value)  copyToClipboard,required TResult Function( ShapeUpdateMessage value)  shapeUpdate,required TResult Function( PaddingUpdateMessage value)  paddingUpdate,required TResult Function( ForegroundColorUpdateMessage value)  foregroundColorUpdate,required TResult Function( BackgroundColorUpdateMessage value)  backgroundColorUpdate,required TResult Function( ExportSizeUpdateMessage value)  exportSizeUpdate,}){
final _that = this;
switch (_that) {
case LoadedStateMessage():
return loadedState(_that);case UpdateInputMessage():
return updateInput(_that);case UpdateCorrectionLevelMessage():
return updateCorrectionLevel(_that);case SaveToFileMessage():
return saveToFile(_that);case UpdateExportTypeMessage():
return updateExportType(_that);case CopyToClipboardMessage():
return copyToClipboard(_that);case ShapeUpdateMessage():
return shapeUpdate(_that);case PaddingUpdateMessage():
return paddingUpdate(_that);case ForegroundColorUpdateMessage():
return foregroundColorUpdate(_that);case BackgroundColorUpdateMessage():
return backgroundColorUpdate(_that);case ExportSizeUpdateMessage():
return exportSizeUpdate(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadedStateMessage value)?  loadedState,TResult? Function( UpdateInputMessage value)?  updateInput,TResult? Function( UpdateCorrectionLevelMessage value)?  updateCorrectionLevel,TResult? Function( SaveToFileMessage value)?  saveToFile,TResult? Function( UpdateExportTypeMessage value)?  updateExportType,TResult? Function( CopyToClipboardMessage value)?  copyToClipboard,TResult? Function( ShapeUpdateMessage value)?  shapeUpdate,TResult? Function( PaddingUpdateMessage value)?  paddingUpdate,TResult? Function( ForegroundColorUpdateMessage value)?  foregroundColorUpdate,TResult? Function( BackgroundColorUpdateMessage value)?  backgroundColorUpdate,TResult? Function( ExportSizeUpdateMessage value)?  exportSizeUpdate,}){
final _that = this;
switch (_that) {
case LoadedStateMessage() when loadedState != null:
return loadedState(_that);case UpdateInputMessage() when updateInput != null:
return updateInput(_that);case UpdateCorrectionLevelMessage() when updateCorrectionLevel != null:
return updateCorrectionLevel(_that);case SaveToFileMessage() when saveToFile != null:
return saveToFile(_that);case UpdateExportTypeMessage() when updateExportType != null:
return updateExportType(_that);case CopyToClipboardMessage() when copyToClipboard != null:
return copyToClipboard(_that);case ShapeUpdateMessage() when shapeUpdate != null:
return shapeUpdate(_that);case PaddingUpdateMessage() when paddingUpdate != null:
return paddingUpdate(_that);case ForegroundColorUpdateMessage() when foregroundColorUpdate != null:
return foregroundColorUpdate(_that);case BackgroundColorUpdateMessage() when backgroundColorUpdate != null:
return backgroundColorUpdate(_that);case ExportSizeUpdateMessage() when exportSizeUpdate != null:
return exportSizeUpdate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( QrCodeState state)?  loadedState,TResult Function( String text)?  updateInput,TResult Function( ErrorCorrectionLevel level)?  updateCorrectionLevel,TResult Function()?  saveToFile,TResult Function( ExportType type)?  updateExportType,TResult Function()?  copyToClipboard,TResult Function( QrCodeShape shape)?  shapeUpdate,TResult Function( EdgeInsets padding)?  paddingUpdate,TResult Function( Color color)?  foregroundColorUpdate,TResult Function( Color color)?  backgroundColorUpdate,TResult Function( int size)?  exportSizeUpdate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadedStateMessage() when loadedState != null:
return loadedState(_that.state);case UpdateInputMessage() when updateInput != null:
return updateInput(_that.text);case UpdateCorrectionLevelMessage() when updateCorrectionLevel != null:
return updateCorrectionLevel(_that.level);case SaveToFileMessage() when saveToFile != null:
return saveToFile();case UpdateExportTypeMessage() when updateExportType != null:
return updateExportType(_that.type);case CopyToClipboardMessage() when copyToClipboard != null:
return copyToClipboard();case ShapeUpdateMessage() when shapeUpdate != null:
return shapeUpdate(_that.shape);case PaddingUpdateMessage() when paddingUpdate != null:
return paddingUpdate(_that.padding);case ForegroundColorUpdateMessage() when foregroundColorUpdate != null:
return foregroundColorUpdate(_that.color);case BackgroundColorUpdateMessage() when backgroundColorUpdate != null:
return backgroundColorUpdate(_that.color);case ExportSizeUpdateMessage() when exportSizeUpdate != null:
return exportSizeUpdate(_that.size);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( QrCodeState state)  loadedState,required TResult Function( String text)  updateInput,required TResult Function( ErrorCorrectionLevel level)  updateCorrectionLevel,required TResult Function()  saveToFile,required TResult Function( ExportType type)  updateExportType,required TResult Function()  copyToClipboard,required TResult Function( QrCodeShape shape)  shapeUpdate,required TResult Function( EdgeInsets padding)  paddingUpdate,required TResult Function( Color color)  foregroundColorUpdate,required TResult Function( Color color)  backgroundColorUpdate,required TResult Function( int size)  exportSizeUpdate,}) {final _that = this;
switch (_that) {
case LoadedStateMessage():
return loadedState(_that.state);case UpdateInputMessage():
return updateInput(_that.text);case UpdateCorrectionLevelMessage():
return updateCorrectionLevel(_that.level);case SaveToFileMessage():
return saveToFile();case UpdateExportTypeMessage():
return updateExportType(_that.type);case CopyToClipboardMessage():
return copyToClipboard();case ShapeUpdateMessage():
return shapeUpdate(_that.shape);case PaddingUpdateMessage():
return paddingUpdate(_that.padding);case ForegroundColorUpdateMessage():
return foregroundColorUpdate(_that.color);case BackgroundColorUpdateMessage():
return backgroundColorUpdate(_that.color);case ExportSizeUpdateMessage():
return exportSizeUpdate(_that.size);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( QrCodeState state)?  loadedState,TResult? Function( String text)?  updateInput,TResult? Function( ErrorCorrectionLevel level)?  updateCorrectionLevel,TResult? Function()?  saveToFile,TResult? Function( ExportType type)?  updateExportType,TResult? Function()?  copyToClipboard,TResult? Function( QrCodeShape shape)?  shapeUpdate,TResult? Function( EdgeInsets padding)?  paddingUpdate,TResult? Function( Color color)?  foregroundColorUpdate,TResult? Function( Color color)?  backgroundColorUpdate,TResult? Function( int size)?  exportSizeUpdate,}) {final _that = this;
switch (_that) {
case LoadedStateMessage() when loadedState != null:
return loadedState(_that.state);case UpdateInputMessage() when updateInput != null:
return updateInput(_that.text);case UpdateCorrectionLevelMessage() when updateCorrectionLevel != null:
return updateCorrectionLevel(_that.level);case SaveToFileMessage() when saveToFile != null:
return saveToFile();case UpdateExportTypeMessage() when updateExportType != null:
return updateExportType(_that.type);case CopyToClipboardMessage() when copyToClipboard != null:
return copyToClipboard();case ShapeUpdateMessage() when shapeUpdate != null:
return shapeUpdate(_that.shape);case PaddingUpdateMessage() when paddingUpdate != null:
return paddingUpdate(_that.padding);case ForegroundColorUpdateMessage() when foregroundColorUpdate != null:
return foregroundColorUpdate(_that.color);case BackgroundColorUpdateMessage() when backgroundColorUpdate != null:
return backgroundColorUpdate(_that.color);case ExportSizeUpdateMessage() when exportSizeUpdate != null:
return exportSizeUpdate(_that.size);case _:
  return null;

}
}

}

/// @nodoc


class LoadedStateMessage implements QrCodeMessage {
  const LoadedStateMessage(this.state);
  

 final  QrCodeState state;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedStateMessageCopyWith<LoadedStateMessage> get copyWith => _$LoadedStateMessageCopyWithImpl<LoadedStateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedStateMessage&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'QrCodeMessage.loadedState(state: $state)';
}


}

/// @nodoc
abstract mixin class $LoadedStateMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $LoadedStateMessageCopyWith(LoadedStateMessage value, $Res Function(LoadedStateMessage) _then) = _$LoadedStateMessageCopyWithImpl;
@useResult
$Res call({
 QrCodeState state
});


$QrCodeStateCopyWith<$Res> get state;

}
/// @nodoc
class _$LoadedStateMessageCopyWithImpl<$Res>
    implements $LoadedStateMessageCopyWith<$Res> {
  _$LoadedStateMessageCopyWithImpl(this._self, this._then);

  final LoadedStateMessage _self;
  final $Res Function(LoadedStateMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(LoadedStateMessage(
null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as QrCodeState,
  ));
}

/// Create a copy of QrCodeMessage
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


class UpdateInputMessage implements QrCodeMessage {
  const UpdateInputMessage(this.text);
  

 final  String text;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInputMessageCopyWith<UpdateInputMessage> get copyWith => _$UpdateInputMessageCopyWithImpl<UpdateInputMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInputMessage&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'QrCodeMessage.updateInput(text: $text)';
}


}

/// @nodoc
abstract mixin class $UpdateInputMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $UpdateInputMessageCopyWith(UpdateInputMessage value, $Res Function(UpdateInputMessage) _then) = _$UpdateInputMessageCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$UpdateInputMessageCopyWithImpl<$Res>
    implements $UpdateInputMessageCopyWith<$Res> {
  _$UpdateInputMessageCopyWithImpl(this._self, this._then);

  final UpdateInputMessage _self;
  final $Res Function(UpdateInputMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(UpdateInputMessage(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateCorrectionLevelMessage implements QrCodeMessage {
  const UpdateCorrectionLevelMessage(this.level);
  

 final  ErrorCorrectionLevel level;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCorrectionLevelMessageCopyWith<UpdateCorrectionLevelMessage> get copyWith => _$UpdateCorrectionLevelMessageCopyWithImpl<UpdateCorrectionLevelMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCorrectionLevelMessage&&(identical(other.level, level) || other.level == level));
}


@override
int get hashCode => Object.hash(runtimeType,level);

@override
String toString() {
  return 'QrCodeMessage.updateCorrectionLevel(level: $level)';
}


}

/// @nodoc
abstract mixin class $UpdateCorrectionLevelMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $UpdateCorrectionLevelMessageCopyWith(UpdateCorrectionLevelMessage value, $Res Function(UpdateCorrectionLevelMessage) _then) = _$UpdateCorrectionLevelMessageCopyWithImpl;
@useResult
$Res call({
 ErrorCorrectionLevel level
});




}
/// @nodoc
class _$UpdateCorrectionLevelMessageCopyWithImpl<$Res>
    implements $UpdateCorrectionLevelMessageCopyWith<$Res> {
  _$UpdateCorrectionLevelMessageCopyWithImpl(this._self, this._then);

  final UpdateCorrectionLevelMessage _self;
  final $Res Function(UpdateCorrectionLevelMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? level = null,}) {
  return _then(UpdateCorrectionLevelMessage(
null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as ErrorCorrectionLevel,
  ));
}


}

/// @nodoc


class SaveToFileMessage implements QrCodeMessage {
  const SaveToFileMessage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveToFileMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeMessage.saveToFile()';
}


}




/// @nodoc


class UpdateExportTypeMessage implements QrCodeMessage {
  const UpdateExportTypeMessage(this.type);
  

 final  ExportType type;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExportTypeMessageCopyWith<UpdateExportTypeMessage> get copyWith => _$UpdateExportTypeMessageCopyWithImpl<UpdateExportTypeMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExportTypeMessage&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'QrCodeMessage.updateExportType(type: $type)';
}


}

/// @nodoc
abstract mixin class $UpdateExportTypeMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $UpdateExportTypeMessageCopyWith(UpdateExportTypeMessage value, $Res Function(UpdateExportTypeMessage) _then) = _$UpdateExportTypeMessageCopyWithImpl;
@useResult
$Res call({
 ExportType type
});




}
/// @nodoc
class _$UpdateExportTypeMessageCopyWithImpl<$Res>
    implements $UpdateExportTypeMessageCopyWith<$Res> {
  _$UpdateExportTypeMessageCopyWithImpl(this._self, this._then);

  final UpdateExportTypeMessage _self;
  final $Res Function(UpdateExportTypeMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(UpdateExportTypeMessage(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ExportType,
  ));
}


}

/// @nodoc


class CopyToClipboardMessage implements QrCodeMessage {
  const CopyToClipboardMessage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CopyToClipboardMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeMessage.copyToClipboard()';
}


}




/// @nodoc


class ShapeUpdateMessage implements QrCodeMessage {
  const ShapeUpdateMessage(this.shape);
  

 final  QrCodeShape shape;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShapeUpdateMessageCopyWith<ShapeUpdateMessage> get copyWith => _$ShapeUpdateMessageCopyWithImpl<ShapeUpdateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShapeUpdateMessage&&(identical(other.shape, shape) || other.shape == shape));
}


@override
int get hashCode => Object.hash(runtimeType,shape);

@override
String toString() {
  return 'QrCodeMessage.shapeUpdate(shape: $shape)';
}


}

/// @nodoc
abstract mixin class $ShapeUpdateMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $ShapeUpdateMessageCopyWith(ShapeUpdateMessage value, $Res Function(ShapeUpdateMessage) _then) = _$ShapeUpdateMessageCopyWithImpl;
@useResult
$Res call({
 QrCodeShape shape
});




}
/// @nodoc
class _$ShapeUpdateMessageCopyWithImpl<$Res>
    implements $ShapeUpdateMessageCopyWith<$Res> {
  _$ShapeUpdateMessageCopyWithImpl(this._self, this._then);

  final ShapeUpdateMessage _self;
  final $Res Function(ShapeUpdateMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? shape = null,}) {
  return _then(ShapeUpdateMessage(
null == shape ? _self.shape : shape // ignore: cast_nullable_to_non_nullable
as QrCodeShape,
  ));
}


}

/// @nodoc


class PaddingUpdateMessage implements QrCodeMessage {
  const PaddingUpdateMessage(this.padding);
  

 final  EdgeInsets padding;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaddingUpdateMessageCopyWith<PaddingUpdateMessage> get copyWith => _$PaddingUpdateMessageCopyWithImpl<PaddingUpdateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaddingUpdateMessage&&(identical(other.padding, padding) || other.padding == padding));
}


@override
int get hashCode => Object.hash(runtimeType,padding);

@override
String toString() {
  return 'QrCodeMessage.paddingUpdate(padding: $padding)';
}


}

/// @nodoc
abstract mixin class $PaddingUpdateMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $PaddingUpdateMessageCopyWith(PaddingUpdateMessage value, $Res Function(PaddingUpdateMessage) _then) = _$PaddingUpdateMessageCopyWithImpl;
@useResult
$Res call({
 EdgeInsets padding
});




}
/// @nodoc
class _$PaddingUpdateMessageCopyWithImpl<$Res>
    implements $PaddingUpdateMessageCopyWith<$Res> {
  _$PaddingUpdateMessageCopyWithImpl(this._self, this._then);

  final PaddingUpdateMessage _self;
  final $Res Function(PaddingUpdateMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? padding = null,}) {
  return _then(PaddingUpdateMessage(
null == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as EdgeInsets,
  ));
}


}

/// @nodoc


class ForegroundColorUpdateMessage implements QrCodeMessage {
  const ForegroundColorUpdateMessage(this.color);
  

 final  Color color;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForegroundColorUpdateMessageCopyWith<ForegroundColorUpdateMessage> get copyWith => _$ForegroundColorUpdateMessageCopyWithImpl<ForegroundColorUpdateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForegroundColorUpdateMessage&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'QrCodeMessage.foregroundColorUpdate(color: $color)';
}


}

/// @nodoc
abstract mixin class $ForegroundColorUpdateMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $ForegroundColorUpdateMessageCopyWith(ForegroundColorUpdateMessage value, $Res Function(ForegroundColorUpdateMessage) _then) = _$ForegroundColorUpdateMessageCopyWithImpl;
@useResult
$Res call({
 Color color
});




}
/// @nodoc
class _$ForegroundColorUpdateMessageCopyWithImpl<$Res>
    implements $ForegroundColorUpdateMessageCopyWith<$Res> {
  _$ForegroundColorUpdateMessageCopyWithImpl(this._self, this._then);

  final ForegroundColorUpdateMessage _self;
  final $Res Function(ForegroundColorUpdateMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(ForegroundColorUpdateMessage(
null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

/// @nodoc


class BackgroundColorUpdateMessage implements QrCodeMessage {
  const BackgroundColorUpdateMessage(this.color);
  

 final  Color color;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackgroundColorUpdateMessageCopyWith<BackgroundColorUpdateMessage> get copyWith => _$BackgroundColorUpdateMessageCopyWithImpl<BackgroundColorUpdateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackgroundColorUpdateMessage&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'QrCodeMessage.backgroundColorUpdate(color: $color)';
}


}

/// @nodoc
abstract mixin class $BackgroundColorUpdateMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $BackgroundColorUpdateMessageCopyWith(BackgroundColorUpdateMessage value, $Res Function(BackgroundColorUpdateMessage) _then) = _$BackgroundColorUpdateMessageCopyWithImpl;
@useResult
$Res call({
 Color color
});




}
/// @nodoc
class _$BackgroundColorUpdateMessageCopyWithImpl<$Res>
    implements $BackgroundColorUpdateMessageCopyWith<$Res> {
  _$BackgroundColorUpdateMessageCopyWithImpl(this._self, this._then);

  final BackgroundColorUpdateMessage _self;
  final $Res Function(BackgroundColorUpdateMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(BackgroundColorUpdateMessage(
null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

/// @nodoc


class ExportSizeUpdateMessage implements QrCodeMessage {
  const ExportSizeUpdateMessage(this.size);
  

 final  int size;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExportSizeUpdateMessageCopyWith<ExportSizeUpdateMessage> get copyWith => _$ExportSizeUpdateMessageCopyWithImpl<ExportSizeUpdateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExportSizeUpdateMessage&&(identical(other.size, size) || other.size == size));
}


@override
int get hashCode => Object.hash(runtimeType,size);

@override
String toString() {
  return 'QrCodeMessage.exportSizeUpdate(size: $size)';
}


}

/// @nodoc
abstract mixin class $ExportSizeUpdateMessageCopyWith<$Res> implements $QrCodeMessageCopyWith<$Res> {
  factory $ExportSizeUpdateMessageCopyWith(ExportSizeUpdateMessage value, $Res Function(ExportSizeUpdateMessage) _then) = _$ExportSizeUpdateMessageCopyWithImpl;
@useResult
$Res call({
 int size
});




}
/// @nodoc
class _$ExportSizeUpdateMessageCopyWithImpl<$Res>
    implements $ExportSizeUpdateMessageCopyWith<$Res> {
  _$ExportSizeUpdateMessageCopyWithImpl(this._self, this._then);

  final ExportSizeUpdateMessage _self;
  final $Res Function(ExportSizeUpdateMessage) _then;

/// Create a copy of QrCodeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? size = null,}) {
  return _then(ExportSizeUpdateMessage(
null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
