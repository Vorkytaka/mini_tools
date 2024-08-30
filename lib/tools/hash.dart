import 'dart:convert';

import 'package:convert/convert.dart';
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
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text('Hash'),
      ),
      children: [
        ContentArea(
          builder: (context, controller) => _Body(
            onChanged: (text) {
              setState(() {
                _text = text;
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
                        value: _text,
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
  final ValueChanged<String> onChanged;

  const _Body({
    required this.onChanged,
  });

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _controller = TextEditingController();
  bool _dropped = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => widget.onChanged(_controller.text));
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
        final content = await details.files.first.readAsString();
        _controller.text = content;
      },
      onDragEntered: (_) {
        setState(() {
          _dropped = true;
        });
      },
      onDragExited: (_) {
        setState(() {
          _dropped = false;
        });
      },
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          MacosTextField(
            readOnly: _dropped,
            controller: _controller,
            maxLines: null,
          ),
          if (_dropped)
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
  final String value;
  final Codec<List<int>, String> codec;

  const _DigestItem({
    required this.digest,
    required this.value,
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
    if (value.isEmpty) {
      return '';
    }

    final utf8value = utf8.encode(value);
    final intValue = digest.process(Uint8List.fromList(utf8value));
    return codec.encode(intValue);
  }
}
