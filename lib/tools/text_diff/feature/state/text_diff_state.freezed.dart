// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_diff_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextDiffState {
  String get oldText => throw _privateConstructorUsedError;
  String get newText => throw _privateConstructorUsedError;
  List<Diff> get oldDiffs => throw _privateConstructorUsedError;
  List<Diff> get newDiffs => throw _privateConstructorUsedError;
  List<Diff> get diffs => throw _privateConstructorUsedError;

  /// Create a copy of TextDiffState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextDiffStateCopyWith<TextDiffState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDiffStateCopyWith<$Res> {
  factory $TextDiffStateCopyWith(
          TextDiffState value, $Res Function(TextDiffState) then) =
      _$TextDiffStateCopyWithImpl<$Res, TextDiffState>;
  @useResult
  $Res call(
      {String oldText,
      String newText,
      List<Diff> oldDiffs,
      List<Diff> newDiffs,
      List<Diff> diffs});
}

/// @nodoc
class _$TextDiffStateCopyWithImpl<$Res, $Val extends TextDiffState>
    implements $TextDiffStateCopyWith<$Res> {
  _$TextDiffStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextDiffState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldText = null,
    Object? newText = null,
    Object? oldDiffs = null,
    Object? newDiffs = null,
    Object? diffs = null,
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
      oldDiffs: null == oldDiffs
          ? _value.oldDiffs
          : oldDiffs // ignore: cast_nullable_to_non_nullable
              as List<Diff>,
      newDiffs: null == newDiffs
          ? _value.newDiffs
          : newDiffs // ignore: cast_nullable_to_non_nullable
              as List<Diff>,
      diffs: null == diffs
          ? _value.diffs
          : diffs // ignore: cast_nullable_to_non_nullable
              as List<Diff>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextDiffStateImplCopyWith<$Res>
    implements $TextDiffStateCopyWith<$Res> {
  factory _$$TextDiffStateImplCopyWith(
          _$TextDiffStateImpl value, $Res Function(_$TextDiffStateImpl) then) =
      __$$TextDiffStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String oldText,
      String newText,
      List<Diff> oldDiffs,
      List<Diff> newDiffs,
      List<Diff> diffs});
}

/// @nodoc
class __$$TextDiffStateImplCopyWithImpl<$Res>
    extends _$TextDiffStateCopyWithImpl<$Res, _$TextDiffStateImpl>
    implements _$$TextDiffStateImplCopyWith<$Res> {
  __$$TextDiffStateImplCopyWithImpl(
      _$TextDiffStateImpl _value, $Res Function(_$TextDiffStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextDiffState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldText = null,
    Object? newText = null,
    Object? oldDiffs = null,
    Object? newDiffs = null,
    Object? diffs = null,
  }) {
    return _then(_$TextDiffStateImpl(
      oldText: null == oldText
          ? _value.oldText
          : oldText // ignore: cast_nullable_to_non_nullable
              as String,
      newText: null == newText
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
      oldDiffs: null == oldDiffs
          ? _value._oldDiffs
          : oldDiffs // ignore: cast_nullable_to_non_nullable
              as List<Diff>,
      newDiffs: null == newDiffs
          ? _value._newDiffs
          : newDiffs // ignore: cast_nullable_to_non_nullable
              as List<Diff>,
      diffs: null == diffs
          ? _value._diffs
          : diffs // ignore: cast_nullable_to_non_nullable
              as List<Diff>,
    ));
  }
}

/// @nodoc

class _$TextDiffStateImpl implements _TextDiffState {
  const _$TextDiffStateImpl(
      {required this.oldText,
      required this.newText,
      required final List<Diff> oldDiffs,
      required final List<Diff> newDiffs,
      required final List<Diff> diffs})
      : _oldDiffs = oldDiffs,
        _newDiffs = newDiffs,
        _diffs = diffs;

  @override
  final String oldText;
  @override
  final String newText;
  final List<Diff> _oldDiffs;
  @override
  List<Diff> get oldDiffs {
    if (_oldDiffs is EqualUnmodifiableListView) return _oldDiffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldDiffs);
  }

  final List<Diff> _newDiffs;
  @override
  List<Diff> get newDiffs {
    if (_newDiffs is EqualUnmodifiableListView) return _newDiffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newDiffs);
  }

  final List<Diff> _diffs;
  @override
  List<Diff> get diffs {
    if (_diffs is EqualUnmodifiableListView) return _diffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diffs);
  }

  @override
  String toString() {
    return 'TextDiffState(oldText: $oldText, newText: $newText, oldDiffs: $oldDiffs, newDiffs: $newDiffs, diffs: $diffs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextDiffStateImpl &&
            (identical(other.oldText, oldText) || other.oldText == oldText) &&
            (identical(other.newText, newText) || other.newText == newText) &&
            const DeepCollectionEquality().equals(other._oldDiffs, _oldDiffs) &&
            const DeepCollectionEquality().equals(other._newDiffs, _newDiffs) &&
            const DeepCollectionEquality().equals(other._diffs, _diffs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      oldText,
      newText,
      const DeepCollectionEquality().hash(_oldDiffs),
      const DeepCollectionEquality().hash(_newDiffs),
      const DeepCollectionEquality().hash(_diffs));

  /// Create a copy of TextDiffState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextDiffStateImplCopyWith<_$TextDiffStateImpl> get copyWith =>
      __$$TextDiffStateImplCopyWithImpl<_$TextDiffStateImpl>(this, _$identity);
}

abstract class _TextDiffState implements TextDiffState {
  const factory _TextDiffState(
      {required final String oldText,
      required final String newText,
      required final List<Diff> oldDiffs,
      required final List<Diff> newDiffs,
      required final List<Diff> diffs}) = _$TextDiffStateImpl;

  @override
  String get oldText;
  @override
  String get newText;
  @override
  List<Diff> get oldDiffs;
  @override
  List<Diff> get newDiffs;
  @override
  List<Diff> get diffs;

  /// Create a copy of TextDiffState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextDiffStateImplCopyWith<_$TextDiffStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
