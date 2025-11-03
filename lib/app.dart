import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';

import 'core/common/datetime_inherited_model.dart';
import 'core/di_v0.dart';
import 'core/presentation/copy_overlay.dart';
import 'features/tabs/presentation/new_tab_widget.dart';
import 'i18n/strings.g.dart';

class MiniToolsApp extends StatelessWidget {
  static final _key = GlobalKey();

  const MiniToolsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DatetimeHolder(
      child: TranslationProvider(
        child: Builder(
          builder: (context) => MacosApp(
            key: _key,
            locale: TranslationProvider.of(context).flutterLocale,
            supportedLocales: AppLocaleUtils.supportedLocales,
            // localizationsDelegates: GlobalMaterialLocalizations.delegates,
            home: const _Window(),
            builder: (context, child) => Theme(
              data: ThemeData.dark(),
              child: CopyOverlay(
                child: child!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Window extends StatelessWidget {
  const _Window();

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      disableWallpaperTinting: true,
      sidebar: Sidebar(
        minWidth: 240,
        isResizable: false,
        top: const Align(
          alignment: AlignmentDirectional.centerStart,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NewTabWidget(),
              MacosPulldownMenuDivider(),
            ],
          ),
        ),
        builder: (context, controller) => context
            .read<MiniDepTree>()
            .tabsListWidgetFactory(scrollController: controller),
        bottom: const _BottomWidget(),
      ),
      child: const _BodyContent(),
    );
  }
}

class _BodyContent extends StatelessWidget {
  const _BodyContent();

  @override
  Widget build(BuildContext context) {
    return context.read<MiniDepTree>().tabViewWidgetFactory();
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        final info = snapshot.data;

        if (info == null) {
          return const SizedBox();
        }

        final theme = MacosTheme.of(context);
        final text = '${info.appName} ${info.version}';

        return DefaultTextStyle.merge(
          style: theme.typography.caption1.copyWith(
            color: theme.typography.caption1.color?.withValues(alpha: 0.7),
          ),
          child: Text(text),
        );
      },
    );
  }
}
