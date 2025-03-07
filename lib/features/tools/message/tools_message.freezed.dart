// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToolsMessage {
  int get selectedTool => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedTool) selectTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedTool)? selectTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedTool)? selectTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectToolMessage value) selectTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectToolMessage value)? selectTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectToolMessage value)? selectTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolsMessageCopyWith<ToolsMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolsMessageCopyWith<$Res> {
  factory $ToolsMessageCopyWith(
          ToolsMessage value, $Res Function(ToolsMessage) then) =
      _$ToolsMessageCopyWithImpl<$Res, ToolsMessage>;
  @useResult
  $Res call({int selectedTool});
}

/// @nodoc
class _$ToolsMessageCopyWithImpl<$Res, $Val extends ToolsMessage>
    implements $ToolsMessageCopyWith<$Res> {
  _$ToolsMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTool = null,
  }) {
    return _then(_value.copyWith(
      selectedTool: null == selectedTool
          ? _value.selectedTool
          : selectedTool // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectToolMessageImplCopyWith<$Res>
    implements $ToolsMessageCopyWith<$Res> {
  factory _$$SelectToolMessageImplCopyWith(_$SelectToolMessageImpl value,
          $Res Function(_$SelectToolMessageImpl) then) =
      __$$SelectToolMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedTool});
}

/// @nodoc
class __$$SelectToolMessageImplCopyWithImpl<$Res>
    extends _$ToolsMessageCopyWithImpl<$Res, _$SelectToolMessageImpl>
    implements _$$SelectToolMessageImplCopyWith<$Res> {
  __$$SelectToolMessageImplCopyWithImpl(_$SelectToolMessageImpl _value,
      $Res Function(_$SelectToolMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTool = null,
  }) {
    return _then(_$SelectToolMessageImpl(
      null == selectedTool
          ? _value.selectedTool
          : selectedTool // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectToolMessageImpl implements SelectToolMessage {
  const _$SelectToolMessageImpl(this.selectedTool);

  @override
  final int selectedTool;

  @override
  String toString() {
    return 'ToolsMessage.selectTool(selectedTool: $selectedTool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectToolMessageImpl &&
            (identical(other.selectedTool, selectedTool) ||
                other.selectedTool == selectedTool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTool);

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectToolMessageImplCopyWith<_$SelectToolMessageImpl> get copyWith =>
      __$$SelectToolMessageImplCopyWithImpl<_$SelectToolMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedTool) selectTool,
  }) {
    return selectTool(selectedTool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedTool)? selectTool,
  }) {
    return selectTool?.call(selectedTool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedTool)? selectTool,
    required TResult orElse(),
  }) {
    if (selectTool != null) {
      return selectTool(selectedTool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectToolMessage value) selectTool,
  }) {
    return selectTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectToolMessage value)? selectTool,
  }) {
    return selectTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectToolMessage value)? selectTool,
    required TResult orElse(),
  }) {
    if (selectTool != null) {
      return selectTool(this);
    }
    return orElse();
  }
}

abstract class SelectToolMessage implements ToolsMessage {
  const factory SelectToolMessage(final int selectedTool) =
      _$SelectToolMessageImpl;

  @override
  int get selectedTool;

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectToolMessageImplCopyWith<_$SelectToolMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
