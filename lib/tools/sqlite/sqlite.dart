import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tools/tools/tools.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/sql.dart';
import 'package:sqlite3/sqlite3.dart' hide Row;

import '../../common/code_themes.dart';
import '../../common/macos_code_editor.dart';
import '../../common/text_styles.dart';

final sqliteTool = Tool(
  titleBuilder: (context) => 'Sqlite',
  icon: Icons.table_chart,
  screenBuilder: (context) => const SqliteTool(),
);

class SqliteTool extends StatefulWidget {
  const SqliteTool({super.key});

  @override
  State<SqliteTool> createState() => _SqliteToolState();
}

class _SqliteToolState extends State<SqliteTool> {
  final _queryController = CodeLineEditingController();

  Database? _database;

  Database get database => _database ??= sqlite3.openInMemory();

  List<_TableInfo> _tableInfos = const [];

  final _history = <(String, dynamic)>[];

  @override
  void dispose() {
    _dropDatabase();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(
        title: Text('Sqlite'),
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  MacosIconButton(
                    icon: const MacosIcon(Icons.play_arrow),
                    onPressed: () {
                      final query = _queryController.text;
                      if (query.isNotEmpty) {
                        _execute(query);
                      }
                    },
                  ),
                  PushButton(
                    onPressed: _database != null
                        ? () {
                            _dropDatabase();
                            setState(() {});
                          }
                        : null,
                    child: Text('Drop table'),
                    controlSize: ControlSize.large,
                  ),
                ],
              ),
              Flexible(
                child: MacosCodeEditor(
                  controller: _queryController,
                  style: MacosCodeEditor.defaultStyle(
                    context,
                    codeTheme: CodeHighlightTheme(
                      languages: {'sql': CodeHighlightThemeMode(mode: langSql)},
                      theme: CodeThemes.monokai(TextStyles.firaCode),
                    ),
                  ),
                  indicatorBuilder: MacosCodeEditor.defaultIndicatorBuilder,
                ),
              ),
              ResizablePane(
                builder: (context, controller) => _History(
                  history: _history,
                  onRerun: _execute,
                ),
                minSize: 200,
                resizableSide: ResizableSide.top,
                startSize: 200,
              ),
            ],
          ),
        ),
        ResizablePane(
          builder: (context, controller) => _TableInfoWidget(
            infos: _tableInfos,
            controller: controller,
          ),
          minSize: 200,
          resizableSide: ResizableSide.left,
          startSize: 200,
          isResizable: false,
        ),
      ],
    );
  }

  void _dropDatabase() {
    _database?.dispose();
    _database = null;
    _history.clear();
    _tableInfos = const [];
  }

  void _execute(String query) {
    try {
      final result = database.select(query);
      _history.add((query, result));
    } on SqliteException catch (e) {
      _history.add((query, e));
    }
    _getDatabaseInfo();
    setState(() {});
  }

  static const _tableQuery =
      "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';";

  static String _tableSchemaQuery(String tableName) =>
      'PRAGMA table_info($tableName);';

  void _getDatabaseInfo() {
    final tables = database
        .select(_tableQuery)
        .map((row) => row['name'])
        .map((tableName) =>
            (tableName, database.select(_tableSchemaQuery(tableName))))
        .map((data) => _TableInfo(
            name: data.$1,
            columns: data.$2
                .map((column) => _ColumnInfo(
                      name: column['name'],
                      type: column['type'],
                      pk: column['pk'] == 1,
                    ))
                .toList()))
        .toList(growable: false);

    setState(() {
      _tableInfos = tables;
    });
  }
}

class _TableInfo {
  final String name;
  final List<_ColumnInfo> columns;

  _TableInfo({
    required this.name,
    required this.columns,
  });
}

class _ColumnInfo {
  final String name;
  final String type;
  final bool pk;

  _ColumnInfo({
    required this.name,
    required this.type,
    required this.pk,
  });
}

class _TableInfoWidget extends StatelessWidget {
  final ScrollController? controller;
  final List<_TableInfo> infos;

  const _TableInfoWidget({
    required this.infos,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return ListView.separated(
      controller: controller,
      itemCount: infos.length,
      padding: const EdgeInsets.all(8),
      separatorBuilder: (context, i) => const MacosPulldownMenuDivider(),
      itemBuilder: (context, i) {
        final info = infos[i];
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(info.name, style: theme.typography.title2),
            for (final column in info.columns)
              Row(
                children: [
                  if (column.pk) const Icon(Icons.key, size: 12),
                  const SizedBox(width: 4),
                  Text(column.name),
                  const SizedBox(width: 4),
                  Text('(${column.type})'),
                ],
              ),
          ],
        );
      },
    );
  }
}

class _History extends StatelessWidget {
  final List<(String, dynamic)> history;
  final ValueChanged<String> onRerun;

  const _History({
    required this.history,
    required this.onRerun,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: history.length,
      separatorBuilder: (context, _) => const MacosPulldownMenuDivider(),
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MacosIconButton(
              icon: const MacosIcon(Icons.play_arrow),
              onPressed: () => onRerun(history[i].$1),
            ),
            Expanded(
              child: Text(
                history[i].$1,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                '${history[i].$2}',
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
