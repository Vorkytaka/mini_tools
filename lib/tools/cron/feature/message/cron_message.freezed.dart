// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CronMessage {
  String get input => throw _privateConstructorUsedError;
  bool get saveToPersist => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input, bool saveToPersist) inputUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input, bool saveToPersist)? inputUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input, bool saveToPersist)? inputUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputUpdateMessage value) inputUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputUpdateMessage value)? inputUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputUpdateMessage value)? inputUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CronMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CronMessageCopyWith<CronMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CronMessageCopyWith<$Res> {
  factory $CronMessageCopyWith(
          CronMessage value, $Res Function(CronMessage) then) =
      _$CronMessageCopyWithImpl<$Res, CronMessage>;
  @useResult
  $Res call({String input, bool saveToPersist});
}

/// @nodoc
class _$CronMessageCopyWithImpl<$Res, $Val extends CronMessage>
    implements $CronMessageCopyWith<$Res> {
  _$CronMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CronMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? saveToPersist = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      saveToPersist: null == saveToPersist
          ? _value.saveToPersist
          : saveToPersist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputUpdateMessageImplCopyWith<$Res>
    implements $CronMessageCopyWith<$Res> {
  factory _$$InputUpdateMessageImplCopyWith(_$InputUpdateMessageImpl value,
          $Res Function(_$InputUpdateMessageImpl) then) =
      __$$InputUpdateMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input, bool saveToPersist});
}

/// @nodoc
class __$$InputUpdateMessageImplCopyWithImpl<$Res>
    extends _$CronMessageCopyWithImpl<$Res, _$InputUpdateMessageImpl>
    implements _$$InputUpdateMessageImplCopyWith<$Res> {
  __$$InputUpdateMessageImplCopyWithImpl(_$InputUpdateMessageImpl _value,
      $Res Function(_$InputUpdateMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CronMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? saveToPersist = null,
  }) {
    return _then(_$InputUpdateMessageImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      saveToPersist: null == saveToPersist
          ? _value.saveToPersist
          : saveToPersist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InputUpdateMessageImpl implements InputUpdateMessage {
  const _$InputUpdateMessageImpl(
      {required this.input, this.saveToPersist = true});

  @override
  final String input;
  @override
  @JsonKey()
  final bool saveToPersist;

  @override
  String toString() {
    return 'CronMessage.inputUpdate(input: $input, saveToPersist: $saveToPersist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputUpdateMessageImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.saveToPersist, saveToPersist) ||
                other.saveToPersist == saveToPersist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input, saveToPersist);

  /// Create a copy of CronMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputUpdateMessageImplCopyWith<_$InputUpdateMessageImpl> get copyWith =>
      __$$InputUpdateMessageImplCopyWithImpl<_$InputUpdateMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input, bool saveToPersist) inputUpdate,
  }) {
    return inputUpdate(input, saveToPersist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input, bool saveToPersist)? inputUpdate,
  }) {
    return inputUpdate?.call(input, saveToPersist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input, bool saveToPersist)? inputUpdate,
    required TResult orElse(),
  }) {
    if (inputUpdate != null) {
      return inputUpdate(input, saveToPersist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputUpdateMessage value) inputUpdate,
  }) {
    return inputUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputUpdateMessage value)? inputUpdate,
  }) {
    return inputUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputUpdateMessage value)? inputUpdate,
    required TResult orElse(),
  }) {
    if (inputUpdate != null) {
      return inputUpdate(this);
    }
    return orElse();
  }
}

abstract class InputUpdateMessage implements CronMessage {
  const factory InputUpdateMessage(
      {required final String input,
      final bool saveToPersist}) = _$InputUpdateMessageImpl;

  @override
  String get input;
  @override
  bool get saveToPersist;

  /// Create a copy of CronMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputUpdateMessageImplCopyWith<_$InputUpdateMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
