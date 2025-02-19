// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_diff_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextDiffEffect {
  String get oldText => throw _privateConstructorUsedError;
  String get newText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldText, String newText) countDiffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldText, String newText)? countDiffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldText, String newText)? countDiffs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountDiffsEffect value) countDiffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountDiffsEffect value)? countDiffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountDiffsEffect value)? countDiffs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TextDiffEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextDiffEffectCopyWith<TextDiffEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDiffEffectCopyWith<$Res> {
  factory $TextDiffEffectCopyWith(
          TextDiffEffect value, $Res Function(TextDiffEffect) then) =
      _$TextDiffEffectCopyWithImpl<$Res, TextDiffEffect>;
  @useResult
  $Res call({String oldText, String newText});
}

/// @nodoc
class _$TextDiffEffectCopyWithImpl<$Res, $Val extends TextDiffEffect>
    implements $TextDiffEffectCopyWith<$Res> {
  _$TextDiffEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextDiffEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldText = null,
    Object? newText = null,
  }) {
    return _then(_value.copyWith(
      oldText: null == oldText
          ? _value.oldText
          : oldText // ignore: cast_nullable_to_non_nullable
              as String,
      newText: null == newText
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountDiffsEffectImplCopyWith<$Res>
    implements $TextDiffEffectCopyWith<$Res> {
  factory _$$CountDiffsEffectImplCopyWith(_$CountDiffsEffectImpl value,
          $Res Function(_$CountDiffsEffectImpl) then) =
      __$$CountDiffsEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldText, String newText});
}

/// @nodoc
class __$$CountDiffsEffectImplCopyWithImpl<$Res>
    extends _$TextDiffEffectCopyWithImpl<$Res, _$CountDiffsEffectImpl>
    implements _$$CountDiffsEffectImplCopyWith<$Res> {
  __$$CountDiffsEffectImplCopyWithImpl(_$CountDiffsEffectImpl _value,
      $Res Function(_$CountDiffsEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextDiffEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldText = null,
    Object? newText = null,
  }) {
    return _then(_$CountDiffsEffectImpl(
      oldText: null == oldText
          ? _value.oldText
          : oldText // ignore: cast_nullable_to_non_nullable
              as String,
      newText: null == newText
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountDiffsEffectImpl implements CountDiffsEffect {
  const _$CountDiffsEffectImpl({required this.oldText, required this.newText});

  @override
  final String oldText;
  @override
  final String newText;

  @override
  String toString() {
    return 'TextDiffEffect.countDiffs(oldText: $oldText, newText: $newText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountDiffsEffectImpl &&
            (identical(other.oldText, oldText) || other.oldText == oldText) &&
            (identical(other.newText, newText) || other.newText == newText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldText, newText);

  /// Create a copy of TextDiffEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountDiffsEffectImplCopyWith<_$CountDiffsEffectImpl> get copyWith =>
      __$$CountDiffsEffectImplCopyWithImpl<_$CountDiffsEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldText, String newText) countDiffs,
  }) {
    return countDiffs(oldText, newText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldText, String newText)? countDiffs,
  }) {
    return countDiffs?.call(oldText, newText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldText, String newText)? countDiffs,
    required TResult orElse(),
  }) {
    if (countDiffs != null) {
      return countDiffs(oldText, newText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountDiffsEffect value) countDiffs,
  }) {
    return countDiffs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountDiffsEffect value)? countDiffs,
  }) {
    return countDiffs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountDiffsEffect value)? countDiffs,
    required TResult orElse(),
  }) {
    if (countDiffs != null) {
      return countDiffs(this);
    }
    return orElse();
  }
}

abstract class CountDiffsEffect implements TextDiffEffect {
  const factory CountDiffsEffect(
      {required final String oldText,
      required final String newText}) = _$CountDiffsEffectImpl;

  @override
  String get oldText;
  @override
  String get newText;

  /// Create a copy of TextDiffEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountDiffsEffectImplCopyWith<_$CountDiffsEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
