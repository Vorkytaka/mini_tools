import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/sql.dart';

import '../../common/code_themes.dart';
import '../../common/macos_code_editor.dart';
import '../../common/text_styles.dart';
import '../../i18n/strings.g.dart';
import '../tools.dart';
import 'sqlite_bloc.dart';

final sqliteTool = Tool(
  titleBuilder: (context) => Translations.of(context).sqlite.title,
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
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.sqlite.title),
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
                  const _ImportDatabaseButton(),
                  const _ExportDatabaseButton(),
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
                builder: (context, controller) => _History(
                  controller: controller,
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
            controller: controller,
          ),
          minSize: 240,
          resizableSide: ResizableSide.left,
          startSize: 240,
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
    final t = Translations.of(context);

    return BlocBuilder<SqliteCubit, SqliteState>(
      buildWhen: (prev, curr) => prev.databaseStatus != curr.databaseStatus,
      builder: (context, state) => PushButton(
        onPressed: state.databaseStatus == SqliteDatabaseStatus.connected
            ? () => context.read<SqliteCubit>().dropTable()
            : null,
        controlSize: ControlSize.large,
        secondary: true,
        child: Text(t.sqlite.drop),
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
        separatorBuilder: (context, i) => const SizedBox(height: 8),
        itemBuilder: (context, i) {
          final info = state.tablesInfo[i];
          return Card(
            elevation: 0,
            color: theme.helpButtonTheme.color,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: theme.dividerColor),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    info.name,
                    style: theme.typography.title3.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const MacosPulldownMenuDivider(),
                  for (final column in info.columns)
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: column.name),
                          TextSpan(
                            text: ' (${column.type}) ',
                            style: theme.typography.caption2,
                          ),
                          if (column.pk)
                            const WidgetSpan(
                              child: Icon(Icons.key, size: 12),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}

class _History extends StatelessWidget {
  final ScrollController? controller;

  const _History({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SqliteCubit, SqliteState>(builder: (context, state) {
      return ListView.separated(
        controller: controller,
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

class _ExportDatabaseButton extends StatelessWidget {
  const _ExportDatabaseButton();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return BlocBuilder<SqliteCubit, SqliteState>(
      builder: (context, state) {
        return PushButton(
          onPressed: state.databaseStatus == SqliteDatabaseStatus.connected
              ? () async {
                  final cubit = context.read<SqliteCubit>();
                  final path = await FilePicker.platform
                      .saveFile(fileName: 'database.sqlite3');
                  if (path != null) {
                    cubit.exportDatabase(path);
                  }
                }
              : null,
          controlSize: ControlSize.large,
          secondary: true,
          child: Text(t.sqlite.export),
        );
      },
    );
  }
}

class _ImportDatabaseButton extends StatelessWidget {
  const _ImportDatabaseButton();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return PushButton(
      onPressed: () async {
        final cubit = context.read<SqliteCubit>();
        final result = await FilePicker.platform.pickFiles();
        if (result != null && result.isSinglePick && result.xFiles.isNotEmpty) {
          await cubit.importDatabase(result.xFiles.first);
        }
      },
      controlSize: ControlSize.large,
      child: Text(t.sqlite.import),
    );
  }
}
