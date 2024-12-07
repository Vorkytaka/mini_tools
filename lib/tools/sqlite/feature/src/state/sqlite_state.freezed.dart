// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sqlite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SqliteState {
  DatabaseConnection get connection => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;
  List<TableInfo> get tables => throw _privateConstructorUsedError;

  /// Create a copy of SqliteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SqliteStateCopyWith<SqliteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SqliteStateCopyWith<$Res> {
  factory $SqliteStateCopyWith(
          SqliteState value, $Res Function(SqliteState) then) =
      _$SqliteStateCopyWithImpl<$Res, SqliteState>;
  @useResult
  $Res call(
      {DatabaseConnection connection,
      List<Result> results,
      List<TableInfo> tables});

  $DatabaseConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class _$SqliteStateCopyWithImpl<$Res, $Val extends SqliteState>
    implements $SqliteStateCopyWith<$Res> {
  _$SqliteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SqliteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
    Object? results = null,
    Object? tables = null,
  }) {
    return _then(_value.copyWith(
      connection: null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as DatabaseConnection,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableInfo>,
    ) as $Val);
  }

  /// Create a copy of SqliteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatabaseConnectionCopyWith<$Res> get connection {
    return $DatabaseConnectionCopyWith<$Res>(_value.connection, (value) {
      return _then(_value.copyWith(connection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SqliteStateImplCopyWith<$Res>
    implements $SqliteStateCopyWith<$Res> {
  factory _$$SqliteStateImplCopyWith(
          _$SqliteStateImpl value, $Res Function(_$SqliteStateImpl) then) =
      __$$SqliteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DatabaseConnection connection,
      List<Result> results,
      List<TableInfo> tables});

  @override
  $DatabaseConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class __$$SqliteStateImplCopyWithImpl<$Res>
    extends _$SqliteStateCopyWithImpl<$Res, _$SqliteStateImpl>
    implements _$$SqliteStateImplCopyWith<$Res> {
  __$$SqliteStateImplCopyWithImpl(
      _$SqliteStateImpl _value, $Res Function(_$SqliteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
    Object? results = null,
    Object? tables = null,
  }) {
    return _then(_$SqliteStateImpl(
      connection: null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as DatabaseConnection,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableInfo>,
    ));
  }
}

/// @nodoc

class _$SqliteStateImpl implements _SqliteState {
  const _$SqliteStateImpl(
      {required this.connection,
      required final List<Result> results,
      required final List<TableInfo> tables})
      : _results = results,
        _tables = tables;

  @override
  final DatabaseConnection connection;
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  final List<TableInfo> _tables;
  @override
  List<TableInfo> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'SqliteState(connection: $connection, results: $results, tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SqliteStateImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      connection,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(_tables));

  /// Create a copy of SqliteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SqliteStateImplCopyWith<_$SqliteStateImpl> get copyWith =>
      __$$SqliteStateImplCopyWithImpl<_$SqliteStateImpl>(this, _$identity);
}

abstract class _SqliteState implements SqliteState {
  const factory _SqliteState(
      {required final DatabaseConnection connection,
      required final List<Result> results,
      required final List<TableInfo> tables}) = _$SqliteStateImpl;

  @override
  DatabaseConnection get connection;
  @override
  List<Result> get results;
  @override
  List<TableInfo> get tables;

  /// Create a copy of SqliteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SqliteStateImplCopyWith<_$SqliteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DatabaseConnection {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnect,
    required TResult Function() inMemory,
    required TResult Function(String folder, String name) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnect,
    TResult? Function()? inMemory,
    TResult? Function(String folder, String name)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnect,
    TResult Function()? inMemory,
    TResult Function(String folder, String name)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnect,
    required TResult Function(InMemoryConnection value) inMemory,
    required TResult Function(FileConnection value) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Disconnected value)? disconnect,
    TResult? Function(InMemoryConnection value)? inMemory,
    TResult? Function(FileConnection value)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnect,
    TResult Function(InMemoryConnection value)? inMemory,
    TResult Function(FileConnection value)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseConnectionCopyWith<$Res> {
  factory $DatabaseConnectionCopyWith(
          DatabaseConnection value, $Res Function(DatabaseConnection) then) =
      _$DatabaseConnectionCopyWithImpl<$Res, DatabaseConnection>;
}

/// @nodoc
class _$DatabaseConnectionCopyWithImpl<$Res, $Val extends DatabaseConnection>
    implements $DatabaseConnectionCopyWith<$Res> {
  _$DatabaseConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatabaseConnection
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
          _$DisconnectedImpl value, $Res Function(_$DisconnectedImpl) then) =
      __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$DatabaseConnectionCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
      _$DisconnectedImpl _value, $Res Function(_$DisconnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseConnection
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectedImpl implements Disconnected {
  const _$DisconnectedImpl();

  @override
  String toString() {
    return 'DatabaseConnection.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnect,
    required TResult Function() inMemory,
    required TResult Function(String folder, String name) file,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnect,
    TResult? Function()? inMemory,
    TResult? Function(String folder, String name)? file,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnect,
    TResult Function()? inMemory,
    TResult Function(String folder, String name)? file,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnect,
    required TResult Function(InMemoryConnection value) inMemory,
    required TResult Function(FileConnection value) file,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Disconnected value)? disconnect,
    TResult? Function(InMemoryConnection value)? inMemory,
    TResult? Function(FileConnection value)? file,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnect,
    TResult Function(InMemoryConnection value)? inMemory,
    TResult Function(FileConnection value)? file,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements DatabaseConnection {
  const factory Disconnected() = _$DisconnectedImpl;
}

/// @nodoc
abstract class _$$InMemoryConnectionImplCopyWith<$Res> {
  factory _$$InMemoryConnectionImplCopyWith(_$InMemoryConnectionImpl value,
          $Res Function(_$InMemoryConnectionImpl) then) =
      __$$InMemoryConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InMemoryConnectionImplCopyWithImpl<$Res>
    extends _$DatabaseConnectionCopyWithImpl<$Res, _$InMemoryConnectionImpl>
    implements _$$InMemoryConnectionImplCopyWith<$Res> {
  __$$InMemoryConnectionImplCopyWithImpl(_$InMemoryConnectionImpl _value,
      $Res Function(_$InMemoryConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseConnection
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InMemoryConnectionImpl implements InMemoryConnection {
  const _$InMemoryConnectionImpl();

  @override
  String toString() {
    return 'DatabaseConnection.inMemory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InMemoryConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnect,
    required TResult Function() inMemory,
    required TResult Function(String folder, String name) file,
  }) {
    return inMemory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnect,
    TResult? Function()? inMemory,
    TResult? Function(String folder, String name)? file,
  }) {
    return inMemory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnect,
    TResult Function()? inMemory,
    TResult Function(String folder, String name)? file,
    required TResult orElse(),
  }) {
    if (inMemory != null) {
      return inMemory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnect,
    required TResult Function(InMemoryConnection value) inMemory,
    required TResult Function(FileConnection value) file,
  }) {
    return inMemory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Disconnected value)? disconnect,
    TResult? Function(InMemoryConnection value)? inMemory,
    TResult? Function(FileConnection value)? file,
  }) {
    return inMemory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnect,
    TResult Function(InMemoryConnection value)? inMemory,
    TResult Function(FileConnection value)? file,
    required TResult orElse(),
  }) {
    if (inMemory != null) {
      return inMemory(this);
    }
    return orElse();
  }
}

abstract class InMemoryConnection implements DatabaseConnection {
  const factory InMemoryConnection() = _$InMemoryConnectionImpl;
}

/// @nodoc
abstract class _$$FileConnectionImplCopyWith<$Res> {
  factory _$$FileConnectionImplCopyWith(_$FileConnectionImpl value,
          $Res Function(_$FileConnectionImpl) then) =
      __$$FileConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String folder, String name});
}

/// @nodoc
class __$$FileConnectionImplCopyWithImpl<$Res>
    extends _$DatabaseConnectionCopyWithImpl<$Res, _$FileConnectionImpl>
    implements _$$FileConnectionImplCopyWith<$Res> {
  __$$FileConnectionImplCopyWithImpl(
      _$FileConnectionImpl _value, $Res Function(_$FileConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folder = null,
    Object? name = null,
  }) {
    return _then(_$FileConnectionImpl(
      folder: null == folder
          ? _value.folder
          : folder // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileConnectionImpl implements FileConnection {
  const _$FileConnectionImpl({required this.folder, required this.name});

  @override
  final String folder;
  @override
  final String name;

  @override
  String toString() {
    return 'DatabaseConnection.file(folder: $folder, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileConnectionImpl &&
            (identical(other.folder, folder) || other.folder == folder) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, folder, name);

  /// Create a copy of DatabaseConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileConnectionImplCopyWith<_$FileConnectionImpl> get copyWith =>
      __$$FileConnectionImplCopyWithImpl<_$FileConnectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnect,
    required TResult Function() inMemory,
    required TResult Function(String folder, String name) file,
  }) {
    return file(folder, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnect,
    TResult? Function()? inMemory,
    TResult? Function(String folder, String name)? file,
  }) {
    return file?.call(folder, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnect,
    TResult Function()? inMemory,
    TResult Function(String folder, String name)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(folder, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnect,
    required TResult Function(InMemoryConnection value) inMemory,
    required TResult Function(FileConnection value) file,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Disconnected value)? disconnect,
    TResult? Function(InMemoryConnection value)? inMemory,
    TResult? Function(FileConnection value)? file,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnect,
    TResult Function(InMemoryConnection value)? inMemory,
    TResult Function(FileConnection value)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class FileConnection implements DatabaseConnection {
  const factory FileConnection(
      {required final String folder,
      required final String name}) = _$FileConnectionImpl;

  String get folder;
  String get name;

  /// Create a copy of DatabaseConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileConnectionImplCopyWith<_$FileConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Result {
  String get query => throw _privateConstructorUsedError;
  DateTime get datetime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, DateTime datetime, Iterable<dynamic> result)
        success,
    required TResult Function(String query, DateTime datetime, String error)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String query, DateTime datetime, Iterable<dynamic> result)?
        success,
    TResult? Function(String query, DateTime datetime, String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, DateTime datetime, Iterable<dynamic> result)?
        success,
    TResult Function(String query, DateTime datetime, String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess value) success,
    required TResult Function(ResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultSuccess value)? success,
    TResult? Function(ResultFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess value)? success,
    TResult Function(ResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({String query, DateTime datetime});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? datetime = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultSuccessImplCopyWith<$Res>
    implements $ResultCopyWith<$Res> {
  factory _$$ResultSuccessImplCopyWith(
          _$ResultSuccessImpl value, $Res Function(_$ResultSuccessImpl) then) =
      __$$ResultSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, DateTime datetime, Iterable<dynamic> result});
}

/// @nodoc
class __$$ResultSuccessImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultSuccessImpl>
    implements _$$ResultSuccessImplCopyWith<$Res> {
  __$$ResultSuccessImplCopyWithImpl(
      _$ResultSuccessImpl _value, $Res Function(_$ResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? datetime = null,
    Object? result = null,
  }) {
    return _then(_$ResultSuccessImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Iterable<dynamic>,
    ));
  }
}

/// @nodoc

class _$ResultSuccessImpl implements ResultSuccess {
  const _$ResultSuccessImpl(
      {required this.query, required this.datetime, required this.result});

  @override
  final String query;
  @override
  final DateTime datetime;
  @override
  final Iterable<dynamic> result;

  @override
  String toString() {
    return 'Result.success(query: $query, datetime: $datetime, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccessImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, datetime,
      const DeepCollectionEquality().hash(result));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultSuccessImplCopyWith<_$ResultSuccessImpl> get copyWith =>
      __$$ResultSuccessImplCopyWithImpl<_$ResultSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, DateTime datetime, Iterable<dynamic> result)
        success,
    required TResult Function(String query, DateTime datetime, String error)
        failure,
  }) {
    return success(query, datetime, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String query, DateTime datetime, Iterable<dynamic> result)?
        success,
    TResult? Function(String query, DateTime datetime, String error)? failure,
  }) {
    return success?.call(query, datetime, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, DateTime datetime, Iterable<dynamic> result)?
        success,
    TResult Function(String query, DateTime datetime, String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(query, datetime, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess value) success,
    required TResult Function(ResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultSuccess value)? success,
    TResult? Function(ResultFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess value)? success,
    TResult Function(ResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResultSuccess implements Result {
  const factory ResultSuccess(
      {required final String query,
      required final DateTime datetime,
      required final Iterable<dynamic> result}) = _$ResultSuccessImpl;

  @override
  String get query;
  @override
  DateTime get datetime;
  Iterable<dynamic> get result;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultSuccessImplCopyWith<_$ResultSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultFailureImplCopyWith<$Res>
    implements $ResultCopyWith<$Res> {
  factory _$$ResultFailureImplCopyWith(
          _$ResultFailureImpl value, $Res Function(_$ResultFailureImpl) then) =
      __$$ResultFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, DateTime datetime, String error});
}

/// @nodoc
class __$$ResultFailureImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultFailureImpl>
    implements _$$ResultFailureImplCopyWith<$Res> {
  __$$ResultFailureImplCopyWithImpl(
      _$ResultFailureImpl _value, $Res Function(_$ResultFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? datetime = null,
    Object? error = null,
  }) {
    return _then(_$ResultFailureImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResultFailureImpl implements ResultFailure {
  const _$ResultFailureImpl(
      {required this.query, required this.datetime, required this.error});

  @override
  final String query;
  @override
  final DateTime datetime;
  @override
  final String error;

  @override
  String toString() {
    return 'Result.failure(query: $query, datetime: $datetime, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultFailureImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, datetime, error);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultFailureImplCopyWith<_$ResultFailureImpl> get copyWith =>
      __$$ResultFailureImplCopyWithImpl<_$ResultFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, DateTime datetime, Iterable<dynamic> result)
        success,
    required TResult Function(String query, DateTime datetime, String error)
        failure,
  }) {
    return failure(query, datetime, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String query, DateTime datetime, Iterable<dynamic> result)?
        success,
    TResult? Function(String query, DateTime datetime, String error)? failure,
  }) {
    return failure?.call(query, datetime, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, DateTime datetime, Iterable<dynamic> result)?
        success,
    TResult Function(String query, DateTime datetime, String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(query, datetime, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess value) success,
    required TResult Function(ResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultSuccess value)? success,
    TResult? Function(ResultFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess value)? success,
    TResult Function(ResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ResultFailure implements Result {
  const factory ResultFailure(
      {required final String query,
      required final DateTime datetime,
      required final String error}) = _$ResultFailureImpl;

  @override
  String get query;
  @override
  DateTime get datetime;
  String get error;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultFailureImplCopyWith<_$ResultFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableInfo {
  String get name => throw _privateConstructorUsedError;
  List<ColumnInfo> get columns => throw _privateConstructorUsedError;

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableInfoCopyWith<TableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableInfoCopyWith<$Res> {
  factory $TableInfoCopyWith(TableInfo value, $Res Function(TableInfo) then) =
      _$TableInfoCopyWithImpl<$Res, TableInfo>;
  @useResult
  $Res call({String name, List<ColumnInfo> columns});
}

/// @nodoc
class _$TableInfoCopyWithImpl<$Res, $Val extends TableInfo>
    implements $TableInfoCopyWith<$Res> {
  _$TableInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? columns = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      columns: null == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<ColumnInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableInfoImplCopyWith<$Res>
    implements $TableInfoCopyWith<$Res> {
  factory _$$TableInfoImplCopyWith(
          _$TableInfoImpl value, $Res Function(_$TableInfoImpl) then) =
      __$$TableInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<ColumnInfo> columns});
}

/// @nodoc
class __$$TableInfoImplCopyWithImpl<$Res>
    extends _$TableInfoCopyWithImpl<$Res, _$TableInfoImpl>
    implements _$$TableInfoImplCopyWith<$Res> {
  __$$TableInfoImplCopyWithImpl(
      _$TableInfoImpl _value, $Res Function(_$TableInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? columns = null,
  }) {
    return _then(_$TableInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      columns: null == columns
          ? _value._columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<ColumnInfo>,
    ));
  }
}

/// @nodoc

class _$TableInfoImpl implements _TableInfo {
  const _$TableInfoImpl(
      {required this.name, required final List<ColumnInfo> columns})
      : _columns = columns;

  @override
  final String name;
  final List<ColumnInfo> _columns;
  @override
  List<ColumnInfo> get columns {
    if (_columns is EqualUnmodifiableListView) return _columns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_columns);
  }

  @override
  String toString() {
    return 'TableInfo(name: $name, columns: $columns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._columns, _columns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_columns));

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableInfoImplCopyWith<_$TableInfoImpl> get copyWith =>
      __$$TableInfoImplCopyWithImpl<_$TableInfoImpl>(this, _$identity);
}

abstract class _TableInfo implements TableInfo {
  const factory _TableInfo(
      {required final String name,
      required final List<ColumnInfo> columns}) = _$TableInfoImpl;

  @override
  String get name;
  @override
  List<ColumnInfo> get columns;

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableInfoImplCopyWith<_$TableInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ColumnInfo {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get pk => throw _privateConstructorUsedError;

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColumnInfoCopyWith<ColumnInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColumnInfoCopyWith<$Res> {
  factory $ColumnInfoCopyWith(
          ColumnInfo value, $Res Function(ColumnInfo) then) =
      _$ColumnInfoCopyWithImpl<$Res, ColumnInfo>;
  @useResult
  $Res call({String name, String type, bool pk});
}

/// @nodoc
class _$ColumnInfoCopyWithImpl<$Res, $Val extends ColumnInfo>
    implements $ColumnInfoCopyWith<$Res> {
  _$ColumnInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? pk = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColumnInfoImplCopyWith<$Res>
    implements $ColumnInfoCopyWith<$Res> {
  factory _$$ColumnInfoImplCopyWith(
          _$ColumnInfoImpl value, $Res Function(_$ColumnInfoImpl) then) =
      __$$ColumnInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type, bool pk});
}

/// @nodoc
class __$$ColumnInfoImplCopyWithImpl<$Res>
    extends _$ColumnInfoCopyWithImpl<$Res, _$ColumnInfoImpl>
    implements _$$ColumnInfoImplCopyWith<$Res> {
  __$$ColumnInfoImplCopyWithImpl(
      _$ColumnInfoImpl _value, $Res Function(_$ColumnInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? pk = null,
  }) {
    return _then(_$ColumnInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ColumnInfoImpl implements _ColumnInfo {
  const _$ColumnInfoImpl(
      {required this.name, required this.type, required this.pk});

  @override
  final String name;
  @override
  final String type;
  @override
  final bool pk;

  @override
  String toString() {
    return 'ColumnInfo(name: $name, type: $type, pk: $pk)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColumnInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pk, pk) || other.pk == pk));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, pk);

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColumnInfoImplCopyWith<_$ColumnInfoImpl> get copyWith =>
      __$$ColumnInfoImplCopyWithImpl<_$ColumnInfoImpl>(this, _$identity);
}

abstract class _ColumnInfo implements ColumnInfo {
  const factory _ColumnInfo(
      {required final String name,
      required final String type,
      required final bool pk}) = _$ColumnInfoImpl;

  @override
  String get name;
  @override
  String get type;
  @override
  bool get pk;

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColumnInfoImplCopyWith<_$ColumnInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
