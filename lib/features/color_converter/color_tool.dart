import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';
import 'package:macos_ui/macos_ui.dart';

import '../../core/common/color.dart';
import '../../core/common/macos_read_only_field.dart';
import '../../i18n/strings.g.dart';
import '../../tool/bloc_tool.dart';
import '../../tool/tool.dart';
import 'color_cubit.dart';

final class ColorConverterTool {
  const ColorConverterTool._();

  static const id = 'color_converter';

  static Tool shared = BlocTool(
    titleBuilder: (context) => Translations.of(context).color.title,
    icon: Icons.color_lens_outlined,
    screenBuilder: (context) => const ColorToolScreen(),
    bloc: ColorCubit(),
  );
}

class ColorToolScreen extends StatelessWidget {
  const ColorToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(title: Text(t.color.title), centerTitle: true),
      children: [
        ContentArea(
          builder: (context, controller) => _Body(controller: controller),
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  final ScrollController? controller;

  const _Body({this.controller});

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _inputController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _inputController.addListener(_onInputUpdate);

    final cubit = context.read<ColorCubit>();
    final state = cubit.state;
    _inputController.text = state.input;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final cubit = context.watch<ColorCubit>();
    final state = cubit.state;
    if (_inputController.text != state.input) {
      _inputController.text = state.input;
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    const separator = SizedBox(height: 8);

    return ListView(
      controller: widget.controller,
      padding: const EdgeInsets.all(8),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocSelector<ColorCubit, ColorState, Color?>(
              selector: (state) => state.color,
              builder: (context, color) {
                return _ColorButton(
                  onChanged:
                      (color) => context.read<ColorCubit>().setColor(color),
                  color: color,
                );
              },
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(t.common.input),
                      const SizedBox(width: 12),
                      PushButton(
                        controlSize: ControlSize.regular,
                        secondary: true,
                        onPressed: () => context.read<ColorCubit>().clear(),
                        child: Text(t.common.clear),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 200,
                    child: MacosTextField(
                      placeholder: t.color.inputPlaceholder,
                      inputFormatters: const [UpperCaseInputFormatter()],
                      controller: _inputController,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Column(
          children: [
            _ItemBuilder(title: t.color.titles.hex, mapper: colorToHexString),
            separator,
            _ItemBuilder(
              title: t.color.titles.hexWithAlpha,
              mapper: colorToArgbHexString,
            ),
            separator,
            _ItemBuilder(title: t.color.titles.rgb, mapper: colorToRgbString),
            separator,
            _ItemBuilder(title: t.color.titles.rgba, mapper: colorToRgbaString),
            separator,
            _ItemBuilder(title: t.color.titles.hsl, mapper: colorToHslString),
            separator,
            _ItemBuilder(title: t.color.titles.hsb, mapper: colorToHsbString),
            separator,
            _ItemBuilder(title: t.color.titles.hwb, mapper: colorToHwbString),
          ],
        ),
      ],
    );
  }

  void _onInputUpdate() {
    context.read<ColorCubit>().updateInput(_inputController.text);
  }
}

class _ItemBuilder extends StatelessWidget {
  final String title;
  final String? Function(Color? color) mapper;

  const _ItemBuilder({required this.title, required this.mapper});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ColorCubit, ColorState, Color?>(
      selector: (state) => state.color,
      builder: (context, color) => _Item(title: title, value: mapper(color)),
    );
  }
}

class _Item extends StatelessWidget {
  final String title;
  final String? value;

  const _Item({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(child: MacosReadonlyField(text: value ?? '', maxLines: 1)),
            const SizedBox(width: 4),
            MacosIconButton(
              onPressed: () {
                final value = this.value;
                if (value != null && value.isNotEmpty) {
                  Clipboard.setData(ClipboardData(text: value));
                }
              },
              icon: const MacosIcon(CupertinoIcons.doc_on_clipboard_fill),
            ),
          ],
        ),
      ],
    );
  }
}

class _ColorButton extends StatefulWidget {
  final Color? color;
  final ValueChanged<Color> onChanged;

  const _ColorButton({required this.onChanged, this.color});

  @override
  State<_ColorButton> createState() => _ColorButtonState();
}

class _ColorButtonState extends State<_ColorButton> {
  final _overlayController = OverlayPortalController();
  final _link = LayerLink();

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (widget.color == null) {
      child = const Placeholder();
    }

    return CompositedTransformTarget(
      link: _link,
      child: OverlayPortal(
        controller: _overlayController,
        overlayChildBuilder: (context) {
          return CompositedTransformFollower(
            link: _link,
            targetAnchor: Alignment.bottomCenter,
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: SizedBox(
                width: 300,
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ColorPicker(
                      color: widget.color ?? const Color(0xffff0000),
                      onChanged: widget.onChanged,
                      initialPicker: Picker.wheel,
                      pickerOrientation: PickerOrientation.portrait,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: GestureDetector(
          onTap: _overlayController.toggle,
          child: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: widget.color,
              border: Border.all(width: 2, color: MacosColors.headerTextColor),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            clipBehavior: Clip.hardEdge,
            child: child,
          ),
        ),
      ),
    );
  }
}

class UpperCaseInputFormatter implements TextInputFormatter {
  const UpperCaseInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) => newValue.copyWith(text: newValue.text.toUpperCase());
}
