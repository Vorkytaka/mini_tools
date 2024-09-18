import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tools/tools/tools.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/sql.dart';

import '../../common/code_themes.dart';
import '../../common/macos_code_editor.dart';
import '../../common/text_styles.dart';
import 'sqlite_bloc.dart';

final sqliteTool = Tool(
  titleBuilder: (context) => 'Sqlite',
  icon: Icons.table_chart,
  screenBuilder: (context) => BlocProvider(
    create: (context) => SqliteCubit()..init(),
    child: const SqliteTool(),
  ),
);

class SqliteTool extends StatefulWidget {
  const SqliteTool({super.key});

  @override
  State<SqliteTool> createState() => _SqliteToolState();
}

class _SqliteToolState extends State<SqliteTool> {
  final _queryController = CodeLineEditingController();

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
                        context.read<SqliteCubit>().execute(query);
                      }
                    },
                  ),
                  const _DropDatabaseButton(),
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
                builder: (context, controller) => const _History(),
                minSize: 200,
                resizableSide: ResizableSide.top,
                startSize: 200,
              ),
            ],
          ),
        ),
        ResizablePane(
          builder: (context, controller) => _TableInfoWidget(
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
}

class _DropDatabaseButton extends StatelessWidget {
  const _DropDatabaseButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SqliteCubit, SqliteState>(
      builder: (context, state) => PushButton(
        onPressed: state.databaseStatus == SqliteDatabaseStatus.connected
            ? () {
                context.read<SqliteCubit>().dropTable();
              }
            : null,
        child: Text('Drop table'),
        controlSize: ControlSize.large,
      ),
    );
  }
}

class _TableInfoWidget extends StatelessWidget {
  final ScrollController? controller;

  const _TableInfoWidget({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return BlocBuilder<SqliteCubit, SqliteState>(builder: (context, state) {
      return ListView.separated(
        controller: controller,
        itemCount: state.tablesInfo.length,
        padding: const EdgeInsets.all(8),
        separatorBuilder: (context, i) => const MacosPulldownMenuDivider(),
        itemBuilder: (context, i) {
          final info = state.tablesInfo[i];
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
    });
  }
}

class _History extends StatelessWidget {
  const _History();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SqliteCubit, SqliteState>(builder: (context, state) {
      return ListView.separated(
        itemCount: state.history.length,
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
                onPressed: () {
                  context.read<SqliteCubit>().execute(state.history[i].$1);
                },
              ),
              Expanded(
                child: Text(
                  state.history[i].$1,
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  '${state.history[i].$2}',
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
