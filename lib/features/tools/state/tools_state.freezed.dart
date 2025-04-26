// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToolsState _$ToolsStateFromJson(Map<String, dynamic> json) {
  return _ToolsState.fromJson(json);
}

/// @nodoc
mixin _$ToolsState {
  Tools get selectedTool => throw _privateConstructorUsedError;
  List<Tools> get tools => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  List<Tools> get searchResult => throw _privateConstructorUsedError;

  /// Serializes this ToolsState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolsStateCopyWith<ToolsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolsStateCopyWith<$Res> {
  factory $ToolsStateCopyWith(
          ToolsState value, $Res Function(ToolsState) then) =
      _$ToolsStateCopyWithImpl<$Res, ToolsState>;
  @useResult
  $Res call(
      {Tools selectedTool,
      List<Tools> tools,
      String searchQuery,
      List<Tools> searchResult});
}

/// @nodoc
class _$ToolsStateCopyWithImpl<$Res, $Val extends ToolsState>
    implements $ToolsStateCopyWith<$Res> {
  _$ToolsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTool = null,
    Object? tools = null,
    Object? searchQuery = null,
    Object? searchResult = null,
  }) {
    return _then(_value.copyWith(
      selectedTool: null == selectedTool
          ? _value.selectedTool
          : selectedTool // ignore: cast_nullable_to_non_nullable
              as Tools,
      tools: null == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tools>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Tools>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToolsStateImplCopyWith<$Res>
    implements $ToolsStateCopyWith<$Res> {
  factory _$$ToolsStateImplCopyWith(
          _$ToolsStateImpl value, $Res Function(_$ToolsStateImpl) then) =
      __$$ToolsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Tools selectedTool,
      List<Tools> tools,
      String searchQuery,
      List<Tools> searchResult});
}

/// @nodoc
class __$$ToolsStateImplCopyWithImpl<$Res>
    extends _$ToolsStateCopyWithImpl<$Res, _$ToolsStateImpl>
    implements _$$ToolsStateImplCopyWith<$Res> {
  __$$ToolsStateImplCopyWithImpl(
      _$ToolsStateImpl _value, $Res Function(_$ToolsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTool = null,
    Object? tools = null,
    Object? searchQuery = null,
    Object? searchResult = null,
  }) {
    return _then(_$ToolsStateImpl(
      selectedTool: null == selectedTool
          ? _value.selectedTool
          : selectedTool // ignore: cast_nullable_to_non_nullable
              as Tools,
      tools: null == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tools>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Tools>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolsStateImpl implements _ToolsState {
  const _$ToolsStateImpl(
      {required this.selectedTool,
      required final List<Tools> tools,
      required this.searchQuery,
      required final List<Tools> searchResult})
      : _tools = tools,
        _searchResult = searchResult;

  factory _$ToolsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToolsStateImplFromJson(json);

  @override
  final Tools selectedTool;
  final List<Tools> _tools;
  @override
  List<Tools> get tools {
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  @override
  final String searchQuery;
  final List<Tools> _searchResult;
  @override
  List<Tools> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'ToolsState(selectedTool: $selectedTool, tools: $tools, searchQuery: $searchQuery, searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolsStateImpl &&
            (identical(other.selectedTool, selectedTool) ||
                other.selectedTool == selectedTool) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTool,
      const DeepCollectionEquality().hash(_tools),
      searchQuery,
      const DeepCollectionEquality().hash(_searchResult));

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolsStateImplCopyWith<_$ToolsStateImpl> get copyWith =>
      __$$ToolsStateImplCopyWithImpl<_$ToolsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolsStateImplToJson(
      this,
    );
  }
}

abstract class _ToolsState implements ToolsState {
  const factory _ToolsState(
      {required final Tools selectedTool,
      required final List<Tools> tools,
      required final String searchQuery,
      required final List<Tools> searchResult}) = _$ToolsStateImpl;

  factory _ToolsState.fromJson(Map<String, dynamic> json) =
      _$ToolsStateImpl.fromJson;

  @override
  Tools get selectedTool;
  @override
  List<Tools> get tools;
  @override
  String get searchQuery;
  @override
  List<Tools> get searchResult;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToolsStateImplCopyWith<_$ToolsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
