// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uuid_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UuidState {
  UuidVersion get version => throw _privateConstructorUsedError;
  String get namespace => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<String> get ids => throw _privateConstructorUsedError;
  bool get isLowerCase => throw _privateConstructorUsedError;

  /// Create a copy of UuidState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UuidStateCopyWith<UuidState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UuidStateCopyWith<$Res> {
  factory $UuidStateCopyWith(UuidState value, $Res Function(UuidState) then) =
      _$UuidStateCopyWithImpl<$Res, UuidState>;
  @useResult
  $Res call({
    UuidVersion version,
    String namespace,
    String name,
    int count,
    List<String> ids,
    bool isLowerCase,
  });
}

/// @nodoc
class _$UuidStateCopyWithImpl<$Res, $Val extends UuidState>
    implements $UuidStateCopyWith<$Res> {
  _$UuidStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UuidState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? namespace = null,
    Object? name = null,
    Object? count = null,
    Object? ids = null,
    Object? isLowerCase = null,
  }) {
    return _then(
      _value.copyWith(
            version:
                null == version
                    ? _value.version
                    : version // ignore: cast_nullable_to_non_nullable
                        as UuidVersion,
            namespace:
                null == namespace
                    ? _value.namespace
                    : namespace // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            ids:
                null == ids
                    ? _value.ids
                    : ids // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            isLowerCase:
                null == isLowerCase
                    ? _value.isLowerCase
                    : isLowerCase // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UuidStateImplCopyWith<$Res>
    implements $UuidStateCopyWith<$Res> {
  factory _$$UuidStateImplCopyWith(
    _$UuidStateImpl value,
    $Res Function(_$UuidStateImpl) then,
  ) = __$$UuidStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    UuidVersion version,
    String namespace,
    String name,
    int count,
    List<String> ids,
    bool isLowerCase,
  });
}

/// @nodoc
class __$$UuidStateImplCopyWithImpl<$Res>
    extends _$UuidStateCopyWithImpl<$Res, _$UuidStateImpl>
    implements _$$UuidStateImplCopyWith<$Res> {
  __$$UuidStateImplCopyWithImpl(
    _$UuidStateImpl _value,
    $Res Function(_$UuidStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UuidState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? namespace = null,
    Object? name = null,
    Object? count = null,
    Object? ids = null,
    Object? isLowerCase = null,
  }) {
    return _then(
      _$UuidStateImpl(
        version:
            null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                    as UuidVersion,
        namespace:
            null == namespace
                ? _value.namespace
                : namespace // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        ids:
            null == ids
                ? _value._ids
                : ids // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        isLowerCase:
            null == isLowerCase
                ? _value.isLowerCase
                : isLowerCase // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$UuidStateImpl implements _UuidState {
  const _$UuidStateImpl({
    required this.version,
    required this.namespace,
    required this.name,
    required this.count,
    required final List<String> ids,
    required this.isLowerCase,
  }) : assert(count > 0),
       _ids = ids;

  @override
  final UuidVersion version;
  @override
  final String namespace;
  @override
  final String name;
  @override
  final int count;
  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  final bool isLowerCase;

  @override
  String toString() {
    return 'UuidState(version: $version, namespace: $namespace, name: $name, count: $count, ids: $ids, isLowerCase: $isLowerCase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UuidStateImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.isLowerCase, isLowerCase) ||
                other.isLowerCase == isLowerCase));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    version,
    namespace,
    name,
    count,
    const DeepCollectionEquality().hash(_ids),
    isLowerCase,
  );

  /// Create a copy of UuidState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UuidStateImplCopyWith<_$UuidStateImpl> get copyWith =>
      __$$UuidStateImplCopyWithImpl<_$UuidStateImpl>(this, _$identity);
}

abstract class _UuidState implements UuidState {
  const factory _UuidState({
    required final UuidVersion version,
    required final String namespace,
    required final String name,
    required final int count,
    required final List<String> ids,
    required final bool isLowerCase,
  }) = _$UuidStateImpl;

  @override
  UuidVersion get version;
  @override
  String get namespace;
  @override
  String get name;
  @override
  int get count;
  @override
  List<String> get ids;
  @override
  bool get isLowerCase;

  /// Create a copy of UuidState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UuidStateImplCopyWith<_$UuidStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
