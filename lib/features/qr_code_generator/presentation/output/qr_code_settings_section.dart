import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../common/ui/hint_button.dart';
import '../../../../common/ui/macos_ui_hacks.dart';
import '../../../../common/ui/mini_color_picker.dart';
import '../../../../i18n/strings.g.dart';
import '../../domain/qr_code_feature.dart';
import '../qr_code_screen.dart';
import 'title_with_selector.dart';

class QrCodeSettingsSection extends StatelessWidget {
  const QrCodeSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _CorrectionLevelSelector(),
        SizedBox(height: 18),
        _ShapeSelector(),
        SizedBox(height: 18),
        _ForegroundColorPicker(),
        SizedBox(height: 18),
        _BackgroundColorPicker(),
      ],
    );
  }
}

class _ForegroundColorPicker extends StatelessWidget {
  const _ForegroundColorPicker();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return _ColorPicker(
      colorPreset: _ColorPicker.fColors,
      colorFromState: (state) => state.visualData.foregroundColor,
      onColorUpdate: (context, color) {
        context.read<QrCodeFeature>().accept(
          QrCodeMessage.foregroundColorUpdate(color),
        );
      },
      subtitle: Text(t.qrCode.settings.foregroundColor.title),
    );
  }
}

class _BackgroundColorPicker extends StatelessWidget {
  const _BackgroundColorPicker();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return _ColorPicker(
      colorPreset: _ColorPicker.bColors,
      colorFromState: (state) => state.visualData.backgroundColor,
      onColorUpdate: (context, color) {
        context.read<QrCodeFeature>().accept(
          QrCodeMessage.backgroundColorUpdate(color),
        );
      },
      subtitle: Text(t.qrCode.settings.backgroundColor.title),
    );
  }
}

class _ShapeSelector extends StatelessWidget {
  const _ShapeSelector();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return TitleWithSelector(
      title: Text(t.qrCode.settings.shapeStyle.title),
      selector: Center(
        child: FeatureBuilder<QrCodeFeature, QrCodeState>(
          buildWhen:
              (prev, curr) => prev.visualData.shape != curr.visualData.shape,
          builder: (context, state) {
            return SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl<QrCodeShape>(
                groupValue: state.visualData.shape,
                children: {
                  for (final shape in QrCodeShape.values)
                    shape: Icon(shape.icon),
                },
                onValueChanged: (shape) {
                  if (shape != null) {
                    context.read<QrCodeFeature>().accept(
                      QrCodeMessage.shapeUpdate(shape),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CorrectionLevelSelector extends StatelessWidget {
  const _CorrectionLevelSelector();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final theme = MacosTheme.of(context);

    return TitleWithSelector(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FeatureBuilder<QrCodeFeature, QrCodeState>(
            buildWhen:
                (prev, curr) => prev.correctionLevel != curr.correctionLevel,
            builder: (context, state) {
              return Text(
                t.qrCode.settings.errorCorrection.title(
                  percent: state.correctionLevel.formatPercentages(context),
                ),
                style: theme.typography.caption2,
              );
            },
          ),
          const SizedBox(width: 4),
          HintButton(hint: t.qrCode.settings.errorCorrection.hint),
        ],
      ),
      selector: Center(
        child: FeatureBuilder<QrCodeFeature, QrCodeState>(
          buildWhen:
              (prev, curr) => prev.correctionLevel != curr.correctionLevel,
          builder: (context, state) {
            return _CorrectionLevelSelectorControl(
              selectedLevel: state.correctionLevel,
              onChanged: (level) {
                if (level != null) {
                  context.read<QrCodeFeature>().accept(
                    QrCodeMessage.updateCorrectionLevel(level),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class _CorrectionLevelSelectorControl extends StatelessWidget {
  final ErrorCorrectionLevel selectedLevel;
  final ValueChanged<ErrorCorrectionLevel?> onChanged;

  const _CorrectionLevelSelectorControl({
    required this.selectedLevel,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl<ErrorCorrectionLevel>(
        groupValue: selectedLevel,
        children: {
          for (final level in ErrorCorrectionLevel.values)
            level: Text(level.formatShort(context)),
        },
        onValueChanged: onChanged,
      ),
    );
  }
}

class _ColorPicker extends StatelessWidget {
  static const fColors = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];
  static const bColors = [
    Colors.white,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.green,
  ];

  final List<Color> colorPreset;
  final Color Function(QrCodeState state) colorFromState;
  final void Function(BuildContext context, Color color) onColorUpdate;
  final Widget subtitle;

  const _ColorPicker({
    required this.colorPreset,
    required this.colorFromState,
    required this.onColorUpdate,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return TitleWithSelector(
      title: subtitle,
      selector: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (final color in colorPreset)
            FeatureBuilder<QrCodeFeature, QrCodeState>(
              buildWhen:
                  (prev, curr) =>
                      colorFromState(prev).toARGB32() !=
                      colorFromState(curr).toARGB32(),
              builder: (context, state) {
                return _ColorItem(
                  color: color,
                  onSelected: (color) {
                    onColorUpdate(context, color);
                  },
                  isSelected:
                      colorFromState(state).toARGB32() == color.toARGB32(),
                );
              },
            ),
          FeatureBuilder<QrCodeFeature, QrCodeState>(
            buildWhen:
                (prev, curr) =>
                    colorFromState(prev).toARGB32() !=
                    colorFromState(curr).toARGB32(),
            builder: (context, state) {
              final isSelected =
                  !colorPreset.any(
                    (color) =>
                        color.toARGB32() == colorFromState(state).toARGB32(),
                  );
              final selectedColor = colorFromState(state);
              final isSelectedColorDark =
                  ThemeData.estimateBrightnessForColor(selectedColor) ==
                  Brightness.dark;

              return MiniColorPicker(
                onColorChanged: (color) {
                  if (color != selectedColor) {
                    onColorUpdate(context, color);
                  }
                },
                selectedColor: selectedColor,
                builder: (context, color) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color:
                            isSelected
                                ? MacosColorProvider.getActiveColor(
                                  accentColor:
                                      theme.accentColor ?? AccentColor.blue,
                                  isDarkModeEnabled:
                                      theme.brightness == Brightness.dark,
                                  isWindowMain: true,
                                )
                                : Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade600),
                          color: color,
                        ),
                        width: 20,
                        height: 20,
                        child: MacosIcon(
                          size: 16,
                          color:
                              isSelectedColorDark ? Colors.white : Colors.black,
                          Icons.colorize,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  final Color color;
  final ValueChanged<Color> onSelected;
  final bool isSelected;

  const _ColorItem({
    required this.color,
    required this.onSelected,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return GestureDetector(
      onTap: () => onSelected(color),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color:
                isSelected
                    ? MacosColorProvider.getActiveColor(
                      accentColor: theme.accentColor ?? AccentColor.blue,
                      isDarkModeEnabled: theme.brightness == Brightness.dark,
                      isWindowMain: true,
                    )
                    : Colors.transparent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade600),
              color: color,
            ),
            width: 20,
            height: 20,
          ),
        ),
      ),
    );
  }
}
