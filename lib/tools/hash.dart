import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:pointycastle/digests/keccak.dart';
import 'package:pointycastle/digests/md2.dart';
import 'package:pointycastle/digests/md4.dart';
import 'package:pointycastle/digests/md5.dart';
import 'package:pointycastle/digests/ripemd128.dart';
import 'package:pointycastle/digests/sha1.dart';
import 'package:pointycastle/digests/sha224.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/digests/sha384.dart';
import 'package:pointycastle/digests/sha512.dart';
import 'package:pointycastle/digests/sm3.dart';
import 'package:pointycastle/digests/tiger.dart';
import 'package:pointycastle/digests/whirlpool.dart';
import 'package:pointycastle/pointycastle.dart' hide Padding;

import '../common/file_drop_widget.dart';
import '../common/list_utils.dart';
import '../common/macos_read_only_field.dart';
import '../i18n/strings.g.dart';
import '../tool/base_tool.dart';

final hashTool = BaseTool(
  titleBuilder: (context) => Translations.of(context).hash.title,
  icon: Icons.qr_code_2,
  screenBuilder: (context) => const HashTool(),
);

enum _HashFormat {
  base64,
  hex,
}

extension on _HashFormat {
  String format(BuildContext context) {
    final s = Translations.of(context);
    switch (this) {
      case _HashFormat.base64:
        return s.hash.hashFormat.base64;
      case _HashFormat.hex:
        return s.hash.hashFormat.hex;
    }
  }

  Codec<List<int>, String> get codec {
    switch (this) {
      case _HashFormat.base64:
        return base64;
      case _HashFormat.hex:
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
  static final _digestList = <Digest>[
    MD2Digest(),
    MD4Digest(),
    MD5Digest(),
    RIPEMD128Digest(),
    SHA1Digest(),
    SHA224Digest(),
    SHA256Digest(),
    SHA384Digest(),
    SHA512Digest(),
    KeccakDigest(),
    TigerDigest(),
    WhirlpoolDigest(),
    SM3Digest(),
  ];

  _HashFormat _format = _HashFormat.hex;
  Uint8List? _bytes;

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
          builder: (context, controller) => _Body(
            onChanged: (bytes) {
              setState(() {
                _bytes = Uint8List.fromList(bytes);
              });
            },
          ),
        ),
        ResizablePane(
          builder: (context, controller) => ListView(
            padding: const EdgeInsets.all(8),
            controller: controller,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    Text(s.hash.bytesCount(n: _bytes?.length ?? 0)),
                    const Spacer(),
                    MacosPopupButton(
                      value: _format,
                      items: _HashFormat.values
                          .map(
                            (type) => MacosPopupMenuItem(
                              value: type,
                              child: Text(type.format(context)),
                            ),
                          )
                          .toList(growable: false),
                      onChanged: (format) {
                        if (format != null && format != _format) {
                          setState(() {
                            _format = format;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ..._digestList
                  .map<Widget>((digest) => _DigestItem(
                        digest: digest,
                        bytes: _bytes,
                        codec: _format.codec,
                      ))
                  .toList(growable: false)
                  .interpose(const SizedBox(height: 8))
            ],
          ),
          minSize: 200,
          resizableSide: ResizableSide.left,
          startSize: 300,
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  final ValueChanged<List<int>> onChanged;

  const _Body({
    required this.onChanged,
  });

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _controller = TextEditingController();

  XFile? _file;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => widget.onChanged(_controller.text.codeUnits));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = Translations.of(context);

    final file = _file;
    final field = file != null
        ? MacosReadonlyField(
            text: s.hash.hashOfFile(path: file.path),
            maxLines: 10,
            textAlignVertical: const TextAlignVertical(y: -1),
          )
        : MacosTextField(
            controller: _controller,
            maxLines: null,
            textAlignVertical: const TextAlignVertical(y: -1),
            placeholder: s.hash.textInputHint,
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
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  PushButton(
                    onPressed: _onFilePicked,
                    controlSize: ControlSize.regular,
                    child: Text(s.hash.loadFile),
                  ),
                  const SizedBox(width: 8),
                  PushButton(
                    onPressed: file != null ? _dropFile : null,
                    controlSize: ControlSize.regular,
                    secondary: true,
                    child: Text(s.hash.dropFile),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Expanded(child: field),
          ],
        ),
      ),
    );
  }

  Future<void> _onFilePicked() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      final file = result.xFiles.first;
      await _update(file);
    }
  }

  void _dropFile() {
    setState(() {
      _file = null;
      widget.onChanged(Uint8List(0));
    });
  }

  Future<void> _update(XFile file) async {
    final List<int> content = await file.readAsBytes();
    widget.onChanged(content);
    setState(() {
      _file = file;
    });
  }
}

class _DigestItem extends StatelessWidget {
  final Digest digest;
  final Uint8List? bytes;
  final Codec<List<int>, String> codec;

  const _DigestItem({
    required this.digest,
    required this.bytes,
    required this.codec,
  });

  @override
  Widget build(BuildContext context) {
    final value = _countDigest();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(digest.algorithmName),
        ),
        const SizedBox(height: 4),
        Row(
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
        ),
      ],
    );
  }

  String _countDigest() {
    final bytes = this.bytes;
    if (bytes == null || bytes.isEmpty) {
      return '';
    }

    final intValue = digest.process(bytes);
    return codec.encode(intValue);
  }
}
