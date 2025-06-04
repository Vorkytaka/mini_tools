import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../i18n/strings.g.dart';
import '../../feature/qr_code_feature.dart';
import '../qr_code_screen.dart';
import 'title_with_selector.dart';

class QrCodeExportSection extends StatelessWidget {
  const QrCodeExportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _ExportSizeSelector(),
        SizedBox(height: 18),
        _ExportTypeSelector(),
        SizedBox(height: 18),
        _ExportButtons(),
      ],
    );
  }
}

enum ExportSizeUI {
  small,
  medium,
  large,
  custom,
}

extension on ExportSizeUI {
  String format(BuildContext context) {
    return switch (this) {
      ExportSizeUI.small => '256',
      ExportSizeUI.medium => '512',
      ExportSizeUI.large => '1024',
      ExportSizeUI.custom =>
        Translations.of(context).qrCode.export.exportSize.custom,
    };
  }

  FutureOr<int?> resolveSize(BuildContext context) async {
    if (this == ExportSizeUI.custom) {
      return showSelectSizeDialog(context: context);
    }

    return switch (this) {
      ExportSizeUI.small => 256,
      ExportSizeUI.medium => 512,
      ExportSizeUI.large => 1024,
      ExportSizeUI.custom => throw UnimplementedError(),
    };
  }
}

Future<int?> showSelectSizeDialog({
  required BuildContext context,
}) =>
    showMacosAlertDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => const _ExportSizeAlertDialog(),
    );

class _ExportSizeAlertDialog extends StatefulWidget {
  const _ExportSizeAlertDialog();

  @override
  State<_ExportSizeAlertDialog> createState() => _ExportSizeAlertDialogState();
}

class _ExportSizeAlertDialogState extends State<_ExportSizeAlertDialog> {
  int? _exportSize;

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosAlertDialog(
      appIcon: const MacosIcon(
        Icons.aspect_ratio,
        size: 50,
      ),
      title: Text(t.qrCode.export.exportSize.dialog.title),
      message: Column(
        children: [
          Text(t.qrCode.export.exportSize.dialog.body),
          const SizedBox(height: 24),
          MacosTextField(
            autofocus: true,
            onChanged: _onInputUpdate,
          ),
        ],
      ),
      primaryButton: PushButton(
        controlSize: ControlSize.large,
        onPressed: () => Navigator.of(context).pop(_exportSize),
        child: Text(t.common.confirm),
      ),
      secondaryButton: PushButton(
        secondary: true,
        controlSize: ControlSize.large,
        onPressed: () => Navigator.of(context).pop(),
        child: Text(t.common.cancel),
      ),
    );
  }

  void _onInputUpdate(String input) {
    _exportSize = int.tryParse(input);
  }
}

class _ExportSizeSelector extends StatelessWidget {
  const _ExportSizeSelector();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return TitleWithSelector(
      title: FeatureBuilder<QrCodeFeature, QrCodeState>(
        buildWhen: (prev, curr) => prev.exportSize != curr.exportSize,
        builder: (context, state) {
          return Text(t.qrCode.export.exportSize.title(px: state.exportSize));
        },
      ),
      selector: FeatureBuilder<QrCodeFeature, QrCodeState>(
        buildWhen: (prev, curr) => prev.exportSize != curr.exportSize,
        builder: (context, state) {
          final ExportSizeUI selectedSize = switch (state.exportSize) {
            256 => ExportSizeUI.small,
            512 => ExportSizeUI.medium,
            1024 => ExportSizeUI.large,
            _ => ExportSizeUI.custom,
          };

          Future<void> onChanged(ExportSizeUI? size) async {
            if (size == null) {
              return;
            }

            final sizeInPx = await size.resolveSize(context);
            if (sizeInPx == null) {
              return;
            }

            if (!context.mounted) {
              return;
            }

            context
                .read<QrCodeFeature>()
                .accept(QrCodeMessage.exportSizeUpdate(sizeInPx));
          }

          return CupertinoSlidingSegmentedControl(
            groupValue: selectedSize,
            children: {
              for (final size in ExportSizeUI.values)
                size: GestureDetector(
                  // This is hack to RE-select the custom item
                  onTap: size == ExportSizeUI.custom && selectedSize == size
                      ? () {
                          onChanged(size);
                        }
                      : null,
                  child: Text(size.format(context)),
                ),
            },
            onValueChanged: onChanged,
          );
        },
      ),
    );
  }
}

class _ExportTypeSelector extends StatelessWidget {
  const _ExportTypeSelector();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return TitleWithSelector(
      title: Text(t.qrCode.export.exportType.title),
      selector: FeatureBuilder<QrCodeFeature, QrCodeState>(
        buildWhen: (prev, curr) => prev.exportType != curr.exportType,
        builder: (context, state) {
          return SizedBox(
            width: double.infinity,
            child: CupertinoSlidingSegmentedControl(
              groupValue: state.exportType,
              children: {
                for (final type in ExportType.values)
                  type: Text(type.format(context)),
              },
              onValueChanged: (type) {
                if (type != null) {
                  context
                      .read<QrCodeFeature>()
                      .accept(QrCodeMessage.updateExportType(type));
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class _ExportButtons extends StatelessWidget {
  const _ExportButtons();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: FeatureBuilder<QrCodeFeature, QrCodeState>(
            buildWhen: (prev, curr) => prev.code != curr.code,
            builder: (context, state) {
              final qrCode = state.code;

              return PushButton(
                secondary: true,
                controlSize: ControlSize.large,
                onPressed: qrCode != null
                    ? () {
                        context
                            .read<QrCodeFeature>()
                            .accept(const QrCodeMessage.copyToClipboard());
                      }
                    : null,
                child: Text(t.common.copy),
              );
            },
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: FeatureBuilder<QrCodeFeature, QrCodeState>(
            buildWhen: (prev, curr) => prev.code != curr.code,
            builder: (context, state) {
              final qrCode = state.code;

              return PushButton(
                controlSize: ControlSize.large,
                onPressed: qrCode != null
                    ? () {
                        context
                            .read<QrCodeFeature>()
                            .accept(const QrCodeMessage.saveToFile());
                      }
                    : null,
                child: Text(t.common.save),
              );
            },
          ),
        ),
      ],
    );
  }
}
