import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite3/sqlite3.dart';

class SqliteCubit extends Cubit<SqliteState> {
  static const _tableQuery =
      "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';";

  static String _tableSchemaQuery(String tableName) =>
      'PRAGMA table_info($tableName);';

  Database? _connection;

  SqliteCubit() : super(const SqliteState.init());

  Database get database => _connection ??= sqlite3.openInMemory();

  void execute(String query) {
    if (query.isEmpty) {
      return;
    }

    dynamic result;
    try {
      result = database.select(query);
    } on SqliteException catch (e) {
      result = e;
    }

    final tablesInfo = _getTablesInfo();

    emit(
      state.copyWith(
        tablesInfo: tablesInfo,
        history: [(query, result), ...state.history],
      ),
    );
  }

  List<TableInfo> _getTablesInfo() {
    try {
      return database
          .select(_tableQuery)
          .map((row) => row['name'])
          .map((tableName) =>
              (tableName, database.select(_tableSchemaQuery(tableName))))
          .map(
            (data) => TableInfo(
              name: data.$1,
              columns: data.$2
                  .map((column) => ColumnInfo(
                        name: column['name'],
                        type: column['type'],
                        pk: column['pk'] == 1,
                      ))
                  .toList(),
            ),
          )
          .toList(growable: false);
    } on SqliteException catch (_) {
      return const [];
    }
  }

  void dropTable() {
    database.dispose();
    _connection = null;
    emit(const SqliteState.init());
  }
}

class SqliteState {
  final List<TableInfo> tablesInfo;
  final List<(String, dynamic)> history;

  const SqliteState({
    required this.tablesInfo,
    required this.history,
  });

  const SqliteState.init()
      : tablesInfo = const [],
        history = const [];

  SqliteState copyWith({
    List<TableInfo>? tablesInfo,
    List<(String, dynamic)>? history,
  }) {
    return SqliteState(
      tablesInfo: tablesInfo ?? this.tablesInfo,
      history: history ?? this.history,
    );
  }
}

class TableInfo {
  final String name;
  final List<ColumnInfo> columns;

  TableInfo({
    required this.name,
    required this.columns,
  });
}

class ColumnInfo {
  final String name;
  final String type;
  final bool pk;

  ColumnInfo({
    required this.name,
    required this.type,
    required this.pk,
  });
}
