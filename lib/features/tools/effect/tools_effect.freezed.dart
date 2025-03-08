// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToolsEffect {
  String get query => throw _privateConstructorUsedError;
  List<Tools> get tools => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<Tools> tools) searchTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<Tools> tools)? searchTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Tools> tools)? searchTools,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchToolsEffect value) searchTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchToolsEffect value)? searchTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchToolsEffect value)? searchTools,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolsEffectCopyWith<ToolsEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolsEffectCopyWith<$Res> {
  factory $ToolsEffectCopyWith(
          ToolsEffect value, $Res Function(ToolsEffect) then) =
      _$ToolsEffectCopyWithImpl<$Res, ToolsEffect>;
  @useResult
  $Res call({String query, List<Tools> tools});
}

/// @nodoc
class _$ToolsEffectCopyWithImpl<$Res, $Val extends ToolsEffect>
    implements $ToolsEffectCopyWith<$Res> {
  _$ToolsEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? tools = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      tools: null == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tools>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchToolsEffectImplCopyWith<$Res>
    implements $ToolsEffectCopyWith<$Res> {
  factory _$$SearchToolsEffectImplCopyWith(_$SearchToolsEffectImpl value,
          $Res Function(_$SearchToolsEffectImpl) then) =
      __$$SearchToolsEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<Tools> tools});
}

/// @nodoc
class __$$SearchToolsEffectImplCopyWithImpl<$Res>
    extends _$ToolsEffectCopyWithImpl<$Res, _$SearchToolsEffectImpl>
    implements _$$SearchToolsEffectImplCopyWith<$Res> {
  __$$SearchToolsEffectImplCopyWithImpl(_$SearchToolsEffectImpl _value,
      $Res Function(_$SearchToolsEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? tools = null,
  }) {
    return _then(_$SearchToolsEffectImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      tools: null == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tools>,
    ));
  }
}

/// @nodoc

class _$SearchToolsEffectImpl implements SearchToolsEffect {
  const _$SearchToolsEffectImpl(
      {required this.query, required final List<Tools> tools})
      : _tools = tools;

  @override
  final String query;
  final List<Tools> _tools;
  @override
  List<Tools> get tools {
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  @override
  String toString() {
    return 'ToolsEffect.searchTools(query: $query, tools: $tools)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchToolsEffectImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._tools, _tools));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_tools));

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchToolsEffectImplCopyWith<_$SearchToolsEffectImpl> get copyWith =>
      __$$SearchToolsEffectImplCopyWithImpl<_$SearchToolsEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<Tools> tools) searchTools,
  }) {
    return searchTools(query, tools);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<Tools> tools)? searchTools,
  }) {
    return searchTools?.call(query, tools);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Tools> tools)? searchTools,
    required TResult orElse(),
  }) {
    if (searchTools != null) {
      return searchTools(query, tools);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchToolsEffect value) searchTools,
  }) {
    return searchTools(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchToolsEffect value)? searchTools,
  }) {
    return searchTools?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchToolsEffect value)? searchTools,
    required TResult orElse(),
  }) {
    if (searchTools != null) {
      return searchTools(this);
    }
    return orElse();
  }
}

abstract class SearchToolsEffect implements ToolsEffect {
  const factory SearchToolsEffect(
      {required final String query,
      required final List<Tools> tools}) = _$SearchToolsEffectImpl;

  @override
  String get query;
  @override
  List<Tools> get tools;

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchToolsEffectImplCopyWith<_$SearchToolsEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
