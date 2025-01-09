import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';

import '../../common/padding.dart';
import '../../i18n/strings.g.dart';
import 'feature/number_base_feature.dart';
import 'number_base_feature_utils.dart';

class NumberBaseConverter extends StatelessWidget {
  const NumberBaseConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.numberConverter.title),
        titleWidth: 175,
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => _Body(
            controller: controller,
          ),
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  final ScrollController? controller;

  const _Body({
    this.controller,
  });

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _base2Controller = TextEditingController();
  final _base8Controller = TextEditingController();
  final _base10Controller = TextEditingController();
  final _base16Controller = TextEditingController();
  final _customController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.numberBaseFeature(context, listen: true);
    final state = feature.state;

    if (_base2Controller.text != state.base2) {
      _base2Controller.text = state.base2;
    }
    if (_base8Controller.text != state.base8) {
      _base8Controller.text = state.base8;
    }
    if (_base10Controller.text != state.base10) {
      _base10Controller.text = state.base10;
    }
    if (_base16Controller.text != state.base16) {
      _base16Controller.text = state.base16;
    }
    if (_customController.text != state.customBaseValue) {
      _customController.text = state.customBaseValue;
    }
  }

  @override
  void dispose() {
    _base2Controller.dispose();
    _base8Controller.dispose();
    _base10Controller.dispose();
    _base16Controller.dispose();
    _customController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return SingleChildScrollView(
      controller: widget.controller,
      padding: panePadding,
      child: Column(
        children: [
          _Item(
            title: Text(t.numberConverter.binary),
            controller: _base2Controller,
            onChanged: _base2Changed,
          ),
          const SizedBox(height: 12),
          _Item(
            title: Text(t.numberConverter.octal),
            controller: _base8Controller,
            onChanged: _base8Changed,
          ),
          const SizedBox(height: 12),
          _Item(
            title: Text(t.numberConverter.decimal),
            controller: _base10Controller,
            onChanged: _base10Changed,
          ),
          const SizedBox(height: 12),
          _Item(
            title: Text(t.numberConverter.hex),
            controller: _base16Controller,
            onChanged: _base16Changed,
          ),
          const SizedBox(height: 12),
          _Item(
            title: Row(
              children: [
                Text(t.numberConverter.custom),
                const SizedBox(width: 8),
                FeatureBuilder<NumberBaseFeature, NumberBaseState>(
                  buildWhen: (prev, curr) => prev.customBase != curr.customBase,
                  builder: (context, state) {
                    return MacosPopupButton<int>(
                      value: state.customBase,
                      items: [
                        for (int i = 2; i <= 36; i++)
                          MacosPopupMenuItem(
                            value: i,
                            child: Text('$i'),
                          ),
                      ],
                      onChanged: (customBase) {
                        if (customBase != null &&
                            customBase != state.customBase) {
                          context.numberBaseFeature(context).accept(
                              UpdateCustomBaseMessage(base: customBase));
                        }
                      },
                    );
                  },
                ),
              ],
            ),
            controller: _customController,
            onChanged: _customChanged,
          ),
        ],
      ),
    );
  }

  void _base2Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase2Message(value));
  }

  void _base8Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase8Message(value));
  }

  void _base10Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase10Message(value));
  }

  void _base16Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase16Message(value));
  }

  void _customChanged(String value) {
    context.numberBaseFeature(context).accept(UpdateInputMessage.custom(value));
  }
}

class _Item extends StatelessWidget {
  final Widget title;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const _Item({
    required this.title,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding,
          child: title,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: MacosTextField(
                controller: controller,
                onChanged: onChanged,
              ),
            ),
            itemSpaceH,
            MacosIconButton(
              onPressed: () {
                if (controller.text.isEmpty) {
                  return;
                }

                Clipboard.setData(
                  ClipboardData(
                    text: controller.text,
                  ),
                );
              },
              semanticLabel: t.common.copy,
              icon: const MacosIcon(
                size: 16,
                CupertinoIcons.doc_on_clipboard_fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
