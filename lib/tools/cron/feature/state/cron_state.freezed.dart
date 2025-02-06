// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CronState {
  String get input => throw _privateConstructorUsedError;
  Cron? get cron => throw _privateConstructorUsedError;

  /// Create a copy of CronState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CronStateCopyWith<CronState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CronStateCopyWith<$Res> {
  factory $CronStateCopyWith(CronState value, $Res Function(CronState) then) =
      _$CronStateCopyWithImpl<$Res, CronState>;
  @useResult
  $Res call({String input, Cron? cron});

  $CronCopyWith<$Res>? get cron;
}

/// @nodoc
class _$CronStateCopyWithImpl<$Res, $Val extends CronState>
    implements $CronStateCopyWith<$Res> {
  _$CronStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CronState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? cron = freezed,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      cron: freezed == cron
          ? _value.cron
          : cron // ignore: cast_nullable_to_non_nullable
              as Cron?,
    ) as $Val);
  }

  /// Create a copy of CronState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CronCopyWith<$Res>? get cron {
    if (_value.cron == null) {
      return null;
    }

    return $CronCopyWith<$Res>(_value.cron!, (value) {
      return _then(_value.copyWith(cron: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CronStateImplCopyWith<$Res>
    implements $CronStateCopyWith<$Res> {
  factory _$$CronStateImplCopyWith(
          _$CronStateImpl value, $Res Function(_$CronStateImpl) then) =
      __$$CronStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input, Cron? cron});

  @override
  $CronCopyWith<$Res>? get cron;
}

/// @nodoc
class __$$CronStateImplCopyWithImpl<$Res>
    extends _$CronStateCopyWithImpl<$Res, _$CronStateImpl>
    implements _$$CronStateImplCopyWith<$Res> {
  __$$CronStateImplCopyWithImpl(
      _$CronStateImpl _value, $Res Function(_$CronStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CronState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? cron = freezed,
  }) {
    return _then(_$CronStateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      cron: freezed == cron
          ? _value.cron
          : cron // ignore: cast_nullable_to_non_nullable
              as Cron?,
    ));
  }
}

/// @nodoc

class _$CronStateImpl implements _CronState {
  const _$CronStateImpl({required this.input, required this.cron});

  @override
  final String input;
  @override
  final Cron? cron;

  @override
  String toString() {
    return 'CronState(input: $input, cron: $cron)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CronStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.cron, cron) || other.cron == cron));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input, cron);

  /// Create a copy of CronState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CronStateImplCopyWith<_$CronStateImpl> get copyWith =>
      __$$CronStateImplCopyWithImpl<_$CronStateImpl>(this, _$identity);
}

abstract class _CronState implements CronState {
  const factory _CronState(
      {required final String input,
      required final Cron? cron}) = _$CronStateImpl;

  @override
  String get input;
  @override
  Cron? get cron;

  /// Create a copy of CronState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CronStateImplCopyWith<_$CronStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
