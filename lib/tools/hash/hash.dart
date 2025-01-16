import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';

import '../../common/file_drop_widget.dart';
import '../../common/macos_read_only_field.dart';
import '../../common/padding.dart';
import '../../i18n/strings.g.dart';
import 'feature/hash_feature.dart';
import 'hash_feature_utils.dart';

extension on HashFormat {
  String format(BuildContext context) {
    final s = Translations.of(context);
    switch (this) {
      case HashFormat.base64:
        return s.hash.hashFormat.base64;
      case HashFormat.hex:
        return s.hash.hashFormat.hex;
    }
  }

  Codec<List<int>, String> get codec {
    switch (this) {
      case HashFormat.base64:
        return base64;
      case HashFormat.hex:
        return hex;
    }
  }
}

class HashTool extends StatefulWidget {
  const HashTool({super.key});

  @override
  State<HashTool> createState() => _HashToolState();
}

class _HashToolState extends State<HashTool> {
  @override
  Widget build(BuildContext context) {
    final s = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(s.hash.title),
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => const _Body(),
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    final s = Translations.of(context);

    final pathToFile = context.hashFeature(listen: true).state.input.map(
          text: (value) => null,
          file: (value) => value.path,
        );
    final field = pathToFile != null
        ? MacosReadonlyField(
            text: s.hash.hashOfFile(path: pathToFile),
            maxLines: 10,
            textAlignVertical: const TextAlignVertical(y: -1),
          )
        : MacosTextField(
            maxLines: null,
            textAlignVertical: const TextAlignVertical(y: -1),
            placeholder: s.hash.textInputHint,
            onChanged: _onTextChanged,
          );

    return Padding(
      padding: const EdgeInsets.all(8),
      child: FileDropWidget(
        onFileDropped: (file) {
          if (file != null) {
            _update(file);
          }
        },
        child: Column(
          children: [
            Padding(
              padding: headlinePadding,
              child: Row(
                children: [
                  Text(s.common.input),
                  const SizedBox(width: 8),
                  PushButton(
                    onPressed: _onFilePicked,
                    controlSize: ControlSize.regular,
                    child: Text(s.hash.loadFile),
                  ),
                  const SizedBox(width: 8),
                  PushButton(
                    onPressed: pathToFile != null ? _dropFile : null,
                    controlSize: ControlSize.regular,
                    secondary: true,
                    child: Text(s.hash.dropFile),
                  ),
                  const SizedBox(width: 8),
                  HashFeatureBuilder(
                    builder: (context, state) {
                      return MacosPopupButton(
                        value: state.algorithm,
                        items: HashAlgorithm.values
                            .map(
                              (algorithm) => MacosPopupMenuItem(
                                value: algorithm,
                                child: Text(algorithm.name.toUpperCase()),
                              ),
                            )
                            .toList(growable: false),
                        onChanged: (algorithm) {
                          if (algorithm != null) {
                            context
                                .hashFeature()
                                .accept(HashEvent.updateAlgorithm(algorithm));
                          }
                        },
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  HashFeatureBuilder(
                    builder: (context, state) {
                      return MacosPopupButton(
                        value: state.format,
                        items: HashFormat.values
                            .map(
                              (type) => MacosPopupMenuItem(
                                value: type,
                                child: Text(type.format(context)),
                              ),
                            )
                            .toList(growable: false),
                        onChanged: (format) {
                          if (format != null && format != state.format) {
                            context
                                .hashFeature()
                                .accept(HashEvent.updateFormat(format));
                          }
                        },
                      );
                    },
                  ),
                  const Spacer(),
                  FeatureBuilder<HashFeature, HashState>(
                    buildWhen: (prev, curr) =>
                        prev.inputBytes != curr.inputBytes,
                    builder: (context, state) => SelectableText(
                      s.hash.bytesCount(n: state.inputBytes),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(child: field),
            const SizedBox(height: 8),
            HashFeatureBuilder(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _DigestItem(
                      digestName: state.algorithm.name,
                      bytes: state.hash,
                      codec: state.format.codec,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onTextChanged(String text) {
    context.hashFeature().accept(HashEvent.updateText(text));
  }

  Future<void> _onFilePicked() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      final file = result.xFiles.first;
      _update(file);
    }
  }

  void _dropFile() {
    context.hashFeature().accept(const HashEvent.dropFile());
  }

  void _update(XFile file) {
    context.hashFeature().accept(HashEvent.setFile(file.path));
  }
}

class _DigestItem extends StatelessWidget {
  final String digestName;
  final Uint8List? bytes;
  final Codec<List<int>, String> codec;

  const _DigestItem({
    required this.digestName,
    required this.bytes,
    required this.codec,
  });

  @override
  Widget build(BuildContext context) {
    final value = _countDigest();

    return Row(
      children: [
        Expanded(
          child: MacosReadonlyField(
            text: value,
            maxLines: 1,
          ),
        ),
        const SizedBox(width: 4),
        MacosIconButton(
          onPressed: () {
            if (value.isNotEmpty) {
              Clipboard.setData(ClipboardData(text: value));
            }
          },
          icon: const MacosIcon(CupertinoIcons.doc_on_clipboard_fill),
        ),
      ],
    );
  }

  String _countDigest() {
    final bytes = this.bytes;
    if (bytes == null || bytes.isEmpty) {
      return '';
    }
    return codec.encode(bytes);
  }
}
