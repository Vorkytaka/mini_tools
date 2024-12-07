import 'package:freezed_annotation/freezed_annotation.dart';

part 'sqlite_state.freezed.dart';

@immutable
@freezed
class SqliteState with _$SqliteState {
  static const init = SqliteState(
    connection: DatabaseConnection.disconnect(),
    results: [],
    tables: [],
  );

  const factory SqliteState({
    required DatabaseConnection connection,
    required List<Result> results,
    required List<TableInfo> tables,
  }) = _SqliteState;
}

extension SqliteStateUtils on SqliteState {
  bool get isConnected => connection.isConnected;
}

@immutable
@freezed
sealed class DatabaseConnection with _$DatabaseConnection {
  const factory DatabaseConnection.disconnect() = Disconnected;

  const factory DatabaseConnection.inMemory() = InMemoryConnection;

  const factory DatabaseConnection.file({
    required String folder,
    required String name,
  }) = FileConnection;
}

extension DatabaseConnectionUtils on DatabaseConnection {
  bool get isConnected => this is! Disconnected;
}

@immutable
@freezed
sealed class Result with _$Result {
  @override
  String get query;

  @override
  DateTime get datetime;

  const factory Result.success({
    required String query,
    required DateTime datetime,
    required Iterable<dynamic> result,
  }) = ResultSuccess;

  const factory Result.failure({
    required String query,
    required DateTime datetime,
    required String error,
  }) = ResultFailure;
}

@immutable
@freezed
class TableInfo with _$TableInfo {
  const factory TableInfo({
    required String name,
    required List<ColumnInfo> columns,
  }) = _TableInfo;
}

@immutable
@freezed
class ColumnInfo with _$ColumnInfo {
  const factory ColumnInfo({
    required String name,
    required String type,
    required bool pk,
  }) = _ColumnInfo;
}
