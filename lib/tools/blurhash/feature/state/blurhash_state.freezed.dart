// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blurhash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlurhashState {
  String get blurhash => throw _privateConstructorUsedError;
  ImageProvider<Object>? get origin => throw _privateConstructorUsedError;

  /// Create a copy of BlurhashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlurhashStateCopyWith<BlurhashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlurhashStateCopyWith<$Res> {
  factory $BlurhashStateCopyWith(
          BlurhashState value, $Res Function(BlurhashState) then) =
      _$BlurhashStateCopyWithImpl<$Res, BlurhashState>;
  @useResult
  $Res call({String blurhash, ImageProvider<Object>? origin});
}

/// @nodoc
class _$BlurhashStateCopyWithImpl<$Res, $Val extends BlurhashState>
    implements $BlurhashStateCopyWith<$Res> {
  _$BlurhashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlurhashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blurhash = null,
    Object? origin = freezed,
  }) {
    return _then(_value.copyWith(
      blurhash: null == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlurhashStateImplCopyWith<$Res>
    implements $BlurhashStateCopyWith<$Res> {
  factory _$$BlurhashStateImplCopyWith(
          _$BlurhashStateImpl value, $Res Function(_$BlurhashStateImpl) then) =
      __$$BlurhashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String blurhash, ImageProvider<Object>? origin});
}

/// @nodoc
class __$$BlurhashStateImplCopyWithImpl<$Res>
    extends _$BlurhashStateCopyWithImpl<$Res, _$BlurhashStateImpl>
    implements _$$BlurhashStateImplCopyWith<$Res> {
  __$$BlurhashStateImplCopyWithImpl(
      _$BlurhashStateImpl _value, $Res Function(_$BlurhashStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlurhashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blurhash = null,
    Object? origin = freezed,
  }) {
    return _then(_$BlurhashStateImpl(
      blurhash: null == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
    ));
  }
}

/// @nodoc

class _$BlurhashStateImpl implements _BlurhashState {
  const _$BlurhashStateImpl({required this.blurhash, required this.origin});

  @override
  final String blurhash;
  @override
  final ImageProvider<Object>? origin;

  @override
  String toString() {
    return 'BlurhashState(blurhash: $blurhash, origin: $origin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlurhashStateImpl &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.origin, origin) || other.origin == origin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blurhash, origin);

  /// Create a copy of BlurhashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlurhashStateImplCopyWith<_$BlurhashStateImpl> get copyWith =>
      __$$BlurhashStateImplCopyWithImpl<_$BlurhashStateImpl>(this, _$identity);
}

abstract class _BlurhashState implements BlurhashState {
  const factory _BlurhashState(
      {required final String blurhash,
      required final ImageProvider<Object>? origin}) = _$BlurhashStateImpl;

  @override
  String get blurhash;
  @override
  ImageProvider<Object>? get origin;

  /// Create a copy of BlurhashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlurhashStateImplCopyWith<_$BlurhashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
