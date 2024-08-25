import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';

import '../common/macos_read_only_field.dart';
import '../common/num.dart';
import 'tools.dart';

final percentagesTool = Tool(
  titleBuilder: (context) => 'Percentage Calculator',
  icon: Icons.percent,
  screenBuilder: (context) => const PercentagesTool(),
);

class PercentagesTool extends StatelessWidget {
  const PercentagesTool({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(
        title: Text('Percentage Calculator'),
        centerTitle: true,
        titleWidth: 164,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: _PercentagesFromValue(),
                ),
                MacosPulldownMenuDivider(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: _PercentagesOfValue(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _PercentagesFromValue extends StatefulWidget {
  const _PercentagesFromValue();

  @override
  State<_PercentagesFromValue> createState() => _PercentagesFromValueState();
}

class _PercentagesFromValueState extends State<_PercentagesFromValue> {
  final _percentController = TextEditingController();
  final _numberController = TextEditingController();

  String _value = '';

  @override
  void initState() {
    super.initState();
    _percentController.addListener(_onUpdate);
    _numberController.addListener(_onUpdate);
  }

  @override
  void dispose() {
    _percentController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text('What is '),
            SizedBox(
              width: 100,
              child: MacosTextField(
                controller: _percentController,
                textAlign: TextAlign.end,
                suffix: Opacity(
                  opacity: 0.5,
                  child: Text('%'),
                ),
              ),
            ),
            Text(' of '),
            SizedBox(
              width: 100,
              child: MacosTextField(
                textAlign: TextAlign.end,
                controller: _numberController,
              ),
            ),
            Text('?'),
            Spacer(),
            SizedBox(
              width: 100,
              child: MacosReadonlyField(
                textAlign: TextAlign.end,
                text: _value,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 4),
            MacosIconButton(
              onPressed: () {
                if (_value.isNotEmpty) {
                  Clipboard.setData(ClipboardData(text: _value));
                }
              },
              icon: MacosIcon(CupertinoIcons.doc_on_clipboard_fill),
            ),
          ],
        ),
      ],
    );
  }

  void _onUpdate() {
    final percent = double.tryParse(_percentController.text);
    final number = double.tryParse(_numberController.text);

    if (percent == null || number == null) {
      setState(() {
        _value = '';
      });
      return;
    }

    setState(() {
      _value = (number * (percent / 100)).skipNulls;
    });
  }
}

class _PercentagesOfValue extends StatefulWidget {
  const _PercentagesOfValue();

  @override
  State<_PercentagesOfValue> createState() => _PercentagesOfValueState();
}

class _PercentagesOfValueState extends State<_PercentagesOfValue> {
  final _partController = TextEditingController();
  final _totalController = TextEditingController();

  String _value = '';

  @override
  void initState() {
    super.initState();
    _partController.addListener(_onUpdate);
    _totalController.addListener(_onUpdate);
  }

  @override
  void dispose() {
    _partController.dispose();
    _totalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: MacosTextField(
            controller: _partController,
            textAlign: TextAlign.end,
          ),
        ),
        Text(' is what % of '),
        SizedBox(
          width: 100,
          child: MacosTextField(
            textAlign: TextAlign.end,
            controller: _totalController,
          ),
        ),
        Text('?'),
        Spacer(),
        SizedBox(
          width: 100,
          child: MacosReadonlyField(
            textAlign: TextAlign.end,
            maxLines: 1,
            text: _value,
            suffix: Opacity(
              opacity: 0.5,
              child: Text('%'),
            ),
          ),
        ),
        const SizedBox(width: 4),
        MacosIconButton(
          onPressed: () {
            if (_value.isNotEmpty) {
              Clipboard.setData(ClipboardData(text: _value));
            }
          },
          icon: MacosIcon(CupertinoIcons.doc_on_clipboard_fill),
        ),
      ],
    );
  }

  void _onUpdate() {
    final part = double.tryParse(_partController.text);
    final total = double.tryParse(_totalController.text);

    if (part == null || total == null) {
      setState(() {
        _value = '';
      });
      return;
    }

    setState(() {
      _value = ((part / total) * 100).skipNulls;
    });
  }
}
