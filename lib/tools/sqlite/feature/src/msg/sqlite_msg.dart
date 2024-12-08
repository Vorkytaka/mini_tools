import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/sqlite_state.dart';

part 'sqlite_msg.freezed.dart';

@immutable
@freezed
sealed class SqliteMsg with _$SqliteMsg {
  const factory SqliteMsg.execute(String query) = ExecuteMsg;

  const factory SqliteMsg.queryResult(Result result) = QueryResultMsg;

  const factory SqliteMsg.importDb(String path) = ImportDbMsg;

  const factory SqliteMsg.exportDb(String path) = ExportDbMsg;

  const factory SqliteMsg.dropTable() = DropTableMsg;

  const factory SqliteMsg.tableInfo(List<TableInfo> tables) = TableInfoMsg;

  const factory SqliteMsg.connectionChanged(DatabaseConnection connection) =
      ConnectionChangedMsg;

  const factory SqliteMsg.dispose() = DisposeMsg;
}
