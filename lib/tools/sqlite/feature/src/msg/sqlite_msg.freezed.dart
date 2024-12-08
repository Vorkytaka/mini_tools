// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sqlite_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SqliteMsg {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SqliteMsgCopyWith<$Res> {
  factory $SqliteMsgCopyWith(SqliteMsg value, $Res Function(SqliteMsg) then) =
      _$SqliteMsgCopyWithImpl<$Res, SqliteMsg>;
}

/// @nodoc
class _$SqliteMsgCopyWithImpl<$Res, $Val extends SqliteMsg>
    implements $SqliteMsgCopyWith<$Res> {
  _$SqliteMsgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExecuteMsgImplCopyWith<$Res> {
  factory _$$ExecuteMsgImplCopyWith(
          _$ExecuteMsgImpl value, $Res Function(_$ExecuteMsgImpl) then) =
      __$$ExecuteMsgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ExecuteMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$ExecuteMsgImpl>
    implements _$$ExecuteMsgImplCopyWith<$Res> {
  __$$ExecuteMsgImplCopyWithImpl(
      _$ExecuteMsgImpl _value, $Res Function(_$ExecuteMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ExecuteMsgImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExecuteMsgImpl implements ExecuteMsg {
  const _$ExecuteMsgImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SqliteMsg.execute(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecuteMsgImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecuteMsgImplCopyWith<_$ExecuteMsgImpl> get copyWith =>
      __$$ExecuteMsgImplCopyWithImpl<_$ExecuteMsgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return execute(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return execute?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (execute != null) {
      return execute(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return execute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return execute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (execute != null) {
      return execute(this);
    }
    return orElse();
  }
}

abstract class ExecuteMsg implements SqliteMsg {
  const factory ExecuteMsg(final String query) = _$ExecuteMsgImpl;

  String get query;

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExecuteMsgImplCopyWith<_$ExecuteMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryResultMsgImplCopyWith<$Res> {
  factory _$$QueryResultMsgImplCopyWith(_$QueryResultMsgImpl value,
          $Res Function(_$QueryResultMsgImpl) then) =
      __$$QueryResultMsgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$QueryResultMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$QueryResultMsgImpl>
    implements _$$QueryResultMsgImplCopyWith<$Res> {
  __$$QueryResultMsgImplCopyWithImpl(
      _$QueryResultMsgImpl _value, $Res Function(_$QueryResultMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$QueryResultMsgImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$QueryResultMsgImpl implements QueryResultMsg {
  const _$QueryResultMsgImpl(this.result);

  @override
  final Result result;

  @override
  String toString() {
    return 'SqliteMsg.queryResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryResultMsgImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryResultMsgImplCopyWith<_$QueryResultMsgImpl> get copyWith =>
      __$$QueryResultMsgImplCopyWithImpl<_$QueryResultMsgImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return queryResult(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return queryResult?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (queryResult != null) {
      return queryResult(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return queryResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return queryResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (queryResult != null) {
      return queryResult(this);
    }
    return orElse();
  }
}

abstract class QueryResultMsg implements SqliteMsg {
  const factory QueryResultMsg(final Result result) = _$QueryResultMsgImpl;

  Result get result;

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryResultMsgImplCopyWith<_$QueryResultMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportDbMsgImplCopyWith<$Res> {
  factory _$$ImportDbMsgImplCopyWith(
          _$ImportDbMsgImpl value, $Res Function(_$ImportDbMsgImpl) then) =
      __$$ImportDbMsgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ImportDbMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$ImportDbMsgImpl>
    implements _$$ImportDbMsgImplCopyWith<$Res> {
  __$$ImportDbMsgImplCopyWithImpl(
      _$ImportDbMsgImpl _value, $Res Function(_$ImportDbMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ImportDbMsgImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImportDbMsgImpl implements ImportDbMsg {
  const _$ImportDbMsgImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'SqliteMsg.importDb(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportDbMsgImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportDbMsgImplCopyWith<_$ImportDbMsgImpl> get copyWith =>
      __$$ImportDbMsgImplCopyWithImpl<_$ImportDbMsgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return importDb(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return importDb?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (importDb != null) {
      return importDb(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return importDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return importDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (importDb != null) {
      return importDb(this);
    }
    return orElse();
  }
}

abstract class ImportDbMsg implements SqliteMsg {
  const factory ImportDbMsg(final String path) = _$ImportDbMsgImpl;

  String get path;

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImportDbMsgImplCopyWith<_$ImportDbMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportDbMsgImplCopyWith<$Res> {
  factory _$$ExportDbMsgImplCopyWith(
          _$ExportDbMsgImpl value, $Res Function(_$ExportDbMsgImpl) then) =
      __$$ExportDbMsgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ExportDbMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$ExportDbMsgImpl>
    implements _$$ExportDbMsgImplCopyWith<$Res> {
  __$$ExportDbMsgImplCopyWithImpl(
      _$ExportDbMsgImpl _value, $Res Function(_$ExportDbMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ExportDbMsgImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExportDbMsgImpl implements ExportDbMsg {
  const _$ExportDbMsgImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'SqliteMsg.exportDb(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportDbMsgImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportDbMsgImplCopyWith<_$ExportDbMsgImpl> get copyWith =>
      __$$ExportDbMsgImplCopyWithImpl<_$ExportDbMsgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return exportDb(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return exportDb?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (exportDb != null) {
      return exportDb(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return exportDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return exportDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (exportDb != null) {
      return exportDb(this);
    }
    return orElse();
  }
}

abstract class ExportDbMsg implements SqliteMsg {
  const factory ExportDbMsg(final String path) = _$ExportDbMsgImpl;

  String get path;

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportDbMsgImplCopyWith<_$ExportDbMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DropTableMsgImplCopyWith<$Res> {
  factory _$$DropTableMsgImplCopyWith(
          _$DropTableMsgImpl value, $Res Function(_$DropTableMsgImpl) then) =
      __$$DropTableMsgImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DropTableMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$DropTableMsgImpl>
    implements _$$DropTableMsgImplCopyWith<$Res> {
  __$$DropTableMsgImplCopyWithImpl(
      _$DropTableMsgImpl _value, $Res Function(_$DropTableMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DropTableMsgImpl implements DropTableMsg {
  const _$DropTableMsgImpl();

  @override
  String toString() {
    return 'SqliteMsg.dropTable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DropTableMsgImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return dropTable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return dropTable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dropTable != null) {
      return dropTable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return dropTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return dropTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (dropTable != null) {
      return dropTable(this);
    }
    return orElse();
  }
}

abstract class DropTableMsg implements SqliteMsg {
  const factory DropTableMsg() = _$DropTableMsgImpl;
}

/// @nodoc
abstract class _$$TableInfoMsgImplCopyWith<$Res> {
  factory _$$TableInfoMsgImplCopyWith(
          _$TableInfoMsgImpl value, $Res Function(_$TableInfoMsgImpl) then) =
      __$$TableInfoMsgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TableInfo> tables});
}

/// @nodoc
class __$$TableInfoMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$TableInfoMsgImpl>
    implements _$$TableInfoMsgImplCopyWith<$Res> {
  __$$TableInfoMsgImplCopyWithImpl(
      _$TableInfoMsgImpl _value, $Res Function(_$TableInfoMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_$TableInfoMsgImpl(
      null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableInfo>,
    ));
  }
}

/// @nodoc

class _$TableInfoMsgImpl implements TableInfoMsg {
  const _$TableInfoMsgImpl(final List<TableInfo> tables) : _tables = tables;

  final List<TableInfo> _tables;
  @override
  List<TableInfo> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'SqliteMsg.tableInfo(tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableInfoMsgImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tables));

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableInfoMsgImplCopyWith<_$TableInfoMsgImpl> get copyWith =>
      __$$TableInfoMsgImplCopyWithImpl<_$TableInfoMsgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return tableInfo(tables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return tableInfo?.call(tables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (tableInfo != null) {
      return tableInfo(tables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return tableInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return tableInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (tableInfo != null) {
      return tableInfo(this);
    }
    return orElse();
  }
}

abstract class TableInfoMsg implements SqliteMsg {
  const factory TableInfoMsg(final List<TableInfo> tables) = _$TableInfoMsgImpl;

  List<TableInfo> get tables;

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableInfoMsgImplCopyWith<_$TableInfoMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionChangedMsgImplCopyWith<$Res> {
  factory _$$ConnectionChangedMsgImplCopyWith(_$ConnectionChangedMsgImpl value,
          $Res Function(_$ConnectionChangedMsgImpl) then) =
      __$$ConnectionChangedMsgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DatabaseConnection connection});

  $DatabaseConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class __$$ConnectionChangedMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$ConnectionChangedMsgImpl>
    implements _$$ConnectionChangedMsgImplCopyWith<$Res> {
  __$$ConnectionChangedMsgImplCopyWithImpl(_$ConnectionChangedMsgImpl _value,
      $Res Function(_$ConnectionChangedMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
  }) {
    return _then(_$ConnectionChangedMsgImpl(
      null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as DatabaseConnection,
    ));
  }

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatabaseConnectionCopyWith<$Res> get connection {
    return $DatabaseConnectionCopyWith<$Res>(_value.connection, (value) {
      return _then(_value.copyWith(connection: value));
    });
  }
}

/// @nodoc

class _$ConnectionChangedMsgImpl implements ConnectionChangedMsg {
  const _$ConnectionChangedMsgImpl(this.connection);

  @override
  final DatabaseConnection connection;

  @override
  String toString() {
    return 'SqliteMsg.connectionChanged(connection: $connection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionChangedMsgImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionChangedMsgImplCopyWith<_$ConnectionChangedMsgImpl>
      get copyWith =>
          __$$ConnectionChangedMsgImplCopyWithImpl<_$ConnectionChangedMsgImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return connectionChanged(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return connectionChanged?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return connectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return connectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(this);
    }
    return orElse();
  }
}

abstract class ConnectionChangedMsg implements SqliteMsg {
  const factory ConnectionChangedMsg(final DatabaseConnection connection) =
      _$ConnectionChangedMsgImpl;

  DatabaseConnection get connection;

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionChangedMsgImplCopyWith<_$ConnectionChangedMsgImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeMsgImplCopyWith<$Res> {
  factory _$$DisposeMsgImplCopyWith(
          _$DisposeMsgImpl value, $Res Function(_$DisposeMsgImpl) then) =
      __$$DisposeMsgImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeMsgImplCopyWithImpl<$Res>
    extends _$SqliteMsgCopyWithImpl<$Res, _$DisposeMsgImpl>
    implements _$$DisposeMsgImplCopyWith<$Res> {
  __$$DisposeMsgImplCopyWithImpl(
      _$DisposeMsgImpl _value, $Res Function(_$DisposeMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteMsg
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisposeMsgImpl implements DisposeMsg {
  const _$DisposeMsgImpl();

  @override
  String toString() {
    return 'SqliteMsg.dispose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisposeMsgImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteMsg value) execute,
    required TResult Function(QueryResultMsg value) queryResult,
    required TResult Function(ImportDbMsg value) importDb,
    required TResult Function(ExportDbMsg value) exportDb,
    required TResult Function(DropTableMsg value) dropTable,
    required TResult Function(TableInfoMsg value) tableInfo,
    required TResult Function(ConnectionChangedMsg value) connectionChanged,
    required TResult Function(DisposeMsg value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteMsg value)? execute,
    TResult? Function(QueryResultMsg value)? queryResult,
    TResult? Function(ImportDbMsg value)? importDb,
    TResult? Function(ExportDbMsg value)? exportDb,
    TResult? Function(DropTableMsg value)? dropTable,
    TResult? Function(TableInfoMsg value)? tableInfo,
    TResult? Function(ConnectionChangedMsg value)? connectionChanged,
    TResult? Function(DisposeMsg value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteMsg value)? execute,
    TResult Function(QueryResultMsg value)? queryResult,
    TResult Function(ImportDbMsg value)? importDb,
    TResult Function(ExportDbMsg value)? exportDb,
    TResult Function(DropTableMsg value)? dropTable,
    TResult Function(TableInfoMsg value)? tableInfo,
    TResult Function(ConnectionChangedMsg value)? connectionChanged,
    TResult Function(DisposeMsg value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class DisposeMsg implements SqliteMsg {
  const factory DisposeMsg() = _$DisposeMsgImpl;
}
