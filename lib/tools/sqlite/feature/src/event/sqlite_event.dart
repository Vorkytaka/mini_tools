import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/sqlite_state.dart';

part 'sqlite_event.freezed.dart';

@immutable
@freezed
sealed class SqliteEvent {
  const factory SqliteEvent.execute(String query) = ExecuteEvent;

  const factory SqliteEvent.queryResult(Result result) = QueryResultEvent;

  const factory SqliteEvent.importDb(String path) = ImportDbEvent;

  const factory SqliteEvent.exportDb(String path) = ExportDbEvent;

  const factory SqliteEvent.dropTable() = DropTable;

  const factory SqliteEvent.tableInfo(List<TableInfo> tables) = TableInfoEvent;

  const factory SqliteEvent.connectionChanged(DatabaseConnection connection) =
      ConnectionChangedEvent;

  const factory SqliteEvent.dispose() = DisposeEvent;
}
