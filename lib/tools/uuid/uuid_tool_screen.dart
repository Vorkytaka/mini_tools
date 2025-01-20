import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uuid/enums.dart';

import '../../common/padding.dart';
import 'feature/uuid_feature.dart';

class UuidToolScreen extends StatelessWidget {
  const UuidToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(
        centerTitle: true,
        title: Text('UUID Generator'),
      ),
      children: [
        ContentArea(
          builder: (context, _) => const _Content(),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: panePadding,
      children: const [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              Text('Generate IDs:'),
              SizedBox(width: 8),
              _UuidVersionSelector(),
            ],
          ),
        ),
        _UuidV5Inputs(),
      ],
    );
  }
}

class _UuidVersionSelector extends StatelessWidget {
  const _UuidVersionSelector();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<UuidFeature, UuidState>(
      buildWhen: (prev, curr) => prev.version != curr.version,
      builder: (context, state) {
        return MacosPopupButton<UuidVersion>(
          value: state.version,
          onChanged: (version) {
            if (version != null) {
              context
                  .read<UuidFeature>()
                  .accept(UuidMessage.updateVersion(version));
            }
          },
          items: const [
            MacosPopupMenuItem(
              value: UuidVersion.v1,
              child: Text('UUID v1'),
            ),
            MacosPopupMenuItem(
              value: UuidVersion.v4,
              child: Text('UUID v4'),
            ),
            MacosPopupMenuItem(
              value: UuidVersion.v5,
              child: Text('UUID v5'),
            ),
          ],
        );
      },
    );
  }
}

class _UuidV5Inputs extends StatelessWidget {
  const _UuidV5Inputs();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<UuidFeature, UuidState>(
      buildWhen: (prev, curr) => prev.version != curr.version,
      builder: (context, state) {
        if (state.version != UuidVersion.v5) {
          return const SizedBox();
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _UuidV5Namespace(),
            const Padding(
              padding: headlinePadding,
              child: Text('Name:'),
            ),
            MacosTextField(
              onChanged: (name) {
                context
                    .read<UuidFeature>()
                    .accept(UuidMessage.updateName(name));
              },
            ),
          ],
        );
      },
    );
  }
}

class _UuidV5Namespace extends StatelessWidget {
  const _UuidV5Namespace();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              Text('Namespace: '),
              _UuidV5NamespaceItem(namespace: Namespace.dns),
              _UuidV5NamespaceItem(namespace: Namespace.url),
              _UuidV5NamespaceItem(namespace: Namespace.oid),
              _UuidV5NamespaceItem(namespace: Namespace.x500),
            ],
          ),
        ),
        _UuidV5NamespaceInput(),
      ],
    );
  }
}

class _UuidV5NamespaceItem extends StatelessWidget {
  final Namespace namespace;

  const _UuidV5NamespaceItem({
    required this.namespace,
  });

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<UuidFeature, UuidState>(
      buildWhen: (prev, curr) => prev.namespace != curr.namespace,
      builder: (context, state) {
        return PushButton(
          secondary: state.namespace != namespace.value,
          onPressed: () {
            context
                .read<UuidFeature>()
                .accept(UuidMessage.updateNamespace(namespace.value));
          },
          controlSize: ControlSize.regular,
          child: Text(namespace.name),
        );
      },
    );
  }
}

class _UuidV5NamespaceInput extends StatefulWidget {
  const _UuidV5NamespaceInput();

  @override
  State<_UuidV5NamespaceInput> createState() => _UuidV5NamespaceInputState();
}

class _UuidV5NamespaceInputState extends State<_UuidV5NamespaceInput> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onUpdate);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.watch<UuidFeature>();
    final state = feature.state;
    if(_controller.text != state.namespace) {
      _controller.text = state.namespace;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosTextField(
      maxLength: 36,
      controller: _controller,
    );
  }

  void _onUpdate() {
    final namespace = _controller.text;
    context.read<UuidFeature>().accept(UuidMessage.updateNamespace(namespace));
  }
}