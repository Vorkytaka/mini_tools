import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:cross_file/cross_file.dart';
import 'package:desktop_drop/desktop_drop.dart';
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
import 'package:pointycastle/pointycastle.dart';

import '../common/list_utils.dart';
import '../common/macos_read_only_field.dart';
import 'tools.dart';

final hashTool = Tool(
  titleBuilder: (context) => 'Hash',
  icon: Icons.qr_code_2,
  screenBuilder: (context) => const HashTool(),
);

enum _HashFormat {
  base64,
  hex,
}

extension on _HashFormat {
  String format(BuildContext context) {
    switch (this) {
      case _HashFormat.base64:
        return 'Base64';
      case _HashFormat.hex:
        return 'HEX';
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
  static final _digestes = <Digest>[
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
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text('Hash'),
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
              Row(
                children: [
                  const Text('Outputs:'),
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
              const SizedBox(height: 16),
              ..._digestes
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

enum _InputType {
  text,
  file,
}

class _BodyState extends State<_Body> {
  final _controller = TextEditingController();

  _InputType _type = _InputType.text;
  XFile? _file;
  bool _dropping = false;

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
    return DropTarget(
      onDragDone: (details) async {
        _file = details.files.firstOrNull;
        final List<int> content = await _file?.readAsBytes() ?? [];
        widget.onChanged(content);
        setState(() {
          _type = _InputType.file;
        });
      },
      onDragEntered: (_) {
        setState(() {
          _dropping = true;
        });
      },
      onDragExited: (_) {
        setState(() {
          _dropping = false;
        });
      },
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          if (_file != null)
            MacosReadonlyField(
              placeholder: 'Hash of file ${_file!.path}',
              textAlignVertical: const TextAlignVertical(y: -1),
            )
          else
            MacosTextField(
              readOnly: _dropping,
              controller: _controller,
              maxLines: null,
              textAlignVertical: const TextAlignVertical(y: -1),
            ),
          if (_dropping)
            const MacosIcon(
              Icons.upload_file,
              size: 120,
            ),
        ],
      ),
    );
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
        Text(digest.algorithmName),
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
