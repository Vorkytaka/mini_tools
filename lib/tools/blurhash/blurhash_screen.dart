import 'package:blurhash_ffi/blurhashffi_image.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import 'feature/blurhash_feature.dart';
import 'feature/message/blurhash_message.dart';
import 'feature/state/blurhash_state.dart';

class BlurhashScreen extends StatelessWidget {
  const BlurhashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text('Blurhash'),
        centerTitle: true,
      ),
      children: [
        ContentArea(builder: (context, controller) {
          return const _Body();
        }),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TextHashWidget(),
        Expanded(
          child: Row(
            children: [
              Expanded(child: _InputSide()),
              Expanded(child: _OutputSide()),
            ],
          ),
        ),
      ],
    );
  }
}

class _TextHashWidget extends StatelessWidget {
  const _TextHashWidget();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<BlurhashFeature, BlurhashState>(
      builder: (context, state) {
        return Text(state.blurhash);
      },
    );
  }
}

class _InputSide extends StatelessWidget {
  const _InputSide();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<BlurhashFeature, BlurhashState>(
      builder: (context, state) {
        final origin = state.origin;
        final Widget child;
        if (origin == null) {
          child = Center(
            child: const ColoredBox(
              color: Colors.black,
              child: SizedBox(
                width: 200,
                height: 200,
              ),
            ),
          );
        } else {
          child = Image(
            image: origin,
          );
        }

        return GestureDetector(
          onTap: () {
            context
                .read<BlurhashFeature>()
                .accept(const BlurhashMessage.selectFile());
          },
          child: child,
        );
      },
    );
  }
}

class _OutputSide extends StatelessWidget {
  const _OutputSide();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<BlurhashFeature, BlurhashState>(
      builder: (context, state) {
        if (state.blurhash.isEmpty) {
          return const Placeholder();
        }

        return Image(
          image: BlurhashFfiImage(state.blurhash,
              decodingHeight: 200, decodingWidth: 200),
          width: 200,
          height: 200,
        );
      },
    );
  }
}
