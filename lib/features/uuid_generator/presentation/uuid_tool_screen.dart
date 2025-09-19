import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uuid/enums.dart';

import '../../../common/padding.dart';
import '../../../i18n/strings.g.dart';
import '../domain/uuid_feature.dart';

class UuidToolScreen extends StatelessWidget {
  const UuidToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(centerTitle: true, title: Text(t.uuidGenerator.title)),
      children: [ContentArea(builder: (context, _) => const _Content())],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Padding(
      padding: panePadding,
      child: Column(
        children: [
          Padding(
            padding: headlinePadding,
            child: Row(
              children: [
                Text(t.uuidGenerator.hint),
                const SizedBox(width: 8),
                const _UuidVersionSelector(),
                const SizedBox(width: 8),
                const Text('x'),
                const SizedBox(width: 8),
                const SizedBox(width: 50, child: _CountField()),
              ],
            ),
          ),
          const _UuidV5Inputs(),
          const SizedBox(height: 16),
          const Padding(padding: headlinePadding, child: _GenerateRow()),
          const SizedBox(height: 8),
          const Expanded(child: _IdsOutputField()),
        ],
      ),
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
              context.read<UuidFeature>().accept(
                UuidMessage.updateVersion(version),
              );
            }
          },
          items: [
            for (final version in UuidVersion.values)
              MacosPopupMenuItem(
                value: version,
                child: Text(version.format(context)),
              ),
          ],
        );
      },
    );
  }
}

extension on UuidVersion {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      UuidVersion.v1 => t.uuidGenerator.types.uuidV1,
      UuidVersion.v4 => t.uuidGenerator.types.uuidV4,
      UuidVersion.v5 => t.uuidGenerator.types.uuidV5,
    };
  }
}

class _CountField extends StatefulWidget {
  const _CountField();

  @override
  State<_CountField> createState() => _CountFieldState();
}

class _CountFieldState extends State<_CountField> {
  final _controller = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.read<UuidFeature>();
    final state = feature.state;
    if (_controller.text != state.count.toString()) {
      _controller.text = state.count.toString();
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
      textAlign: TextAlign.end,
      controller: _controller,
      onChanged: (text) {
        final count = int.tryParse(text);
        if (count != null && count > 0) {
          context.read<UuidFeature>().accept(UuidMessage.updateCount(count));
        }
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
            const SizedBox(height: 8),
            const _UuidV5Namespace(),
            const SizedBox(height: 8),
            const Padding(padding: headlinePadding, child: Text('Name:')),
            const SizedBox(height: 4),
            MacosTextField(
              onChanged: (name) {
                context.read<UuidFeature>().accept(
                  UuidMessage.updateName(name),
                );
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
    final t = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              Text(t.uuidGenerator.namespace),
              const SizedBox(width: 8),
              const _UuidV5NamespaceItem(namespace: Namespace.dns),
              const SizedBox(width: 8),
              const _UuidV5NamespaceItem(namespace: Namespace.url),
              const SizedBox(width: 8),
              const _UuidV5NamespaceItem(namespace: Namespace.oid),
              const SizedBox(width: 8),
              const _UuidV5NamespaceItem(namespace: Namespace.x500),
              const SizedBox(width: 8),
              const _UuidV5NamespaceItem(namespace: Namespace.nil),
              const SizedBox(width: 8),
              const _UuidV5NamespaceItem(namespace: Namespace.max),
            ],
          ),
        ),
        const SizedBox(height: 4),
        const _UuidV5NamespaceInput(),
      ],
    );
  }
}

class _UuidV5NamespaceItem extends StatelessWidget {
  final Namespace namespace;

  const _UuidV5NamespaceItem({required this.namespace});

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<UuidFeature, UuidState>(
      buildWhen: (prev, curr) => prev.namespace != curr.namespace,
      builder: (context, state) {
        return PushButton(
          secondary: state.namespace != namespace.value,
          onPressed: () {
            context.read<UuidFeature>().accept(
              UuidMessage.updateNamespace(namespace.value),
            );
          },
          controlSize: ControlSize.regular,
          child: Text(namespace.format(context)),
        );
      },
    );
  }
}

extension on Namespace {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      Namespace.dns => t.uuidGenerator.namespaces.dns,
      Namespace.url => t.uuidGenerator.namespaces.url,
      Namespace.oid => t.uuidGenerator.namespaces.oid,
      Namespace.x500 => t.uuidGenerator.namespaces.x500,
      Namespace.nil => t.uuidGenerator.namespaces.nil,
      Namespace.max => t.uuidGenerator.namespaces.max,
      _ => throw Exception(),
    };
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
    if (_controller.text != state.namespace) {
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
    return MacosTextField(maxLength: 36, controller: _controller);
  }

  void _onUpdate() {
    final namespace = _controller.text;
    context.read<UuidFeature>().accept(UuidMessage.updateNamespace(namespace));
  }
}

class _GenerateRow extends StatelessWidget {
  const _GenerateRow();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      children: [
        PushButton(
          onPressed: () {
            context.read<UuidFeature>().accept(const UuidMessage.generate());
          },
          controlSize: ControlSize.regular,
          child: Text(t.uuidGenerator.generate),
        ),
        const Spacer(),
        _IsLowerCase(),
      ],
    );
  }
}

class _IsLowerCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<UuidFeature, UuidState>(
      buildWhen: (prev, curr) => prev.isLowerCase != curr.isLowerCase,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            final isLowerCase = !state.isLowerCase;
            context.read<UuidFeature>().accept(
              UuidMessage.updateLowerCase(isLowerCase),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MacosCheckbox(
                value: state.isLowerCase,
                onChanged: (value) {
                  if (state.isLowerCase != value) {
                    context.read<UuidFeature>().accept(
                      UuidMessage.updateLowerCase(value),
                    );
                  }
                },
              ),
              const SizedBox(width: 4),
              Text(t.uuidGenerator.lowercase),
            ],
          ),
        );
      },
    );
  }
}

class _IdsOutputField extends StatefulWidget {
  const _IdsOutputField();

  @override
  State<_IdsOutputField> createState() => _IdsOutputFieldState();
}

class _IdsOutputFieldState extends State<_IdsOutputField> {
  final _controller = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.watch<UuidFeature>();
    final state = feature.state;
    final ids = state.ids
        .map((e) => state.isLowerCase ? e.toLowerCase() : e.toUpperCase())
        .join('\n');
    if (_controller.text != ids) {
      _controller.text = ids;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MacosTextField(
      style: const TextStyle(fontFamily: 'Fira Code'),
      readOnly: true,
      textAlignVertical: const TextAlignVertical(y: -1),
      controller: _controller,
      minLines: null,
      maxLines: null,
    );
  }
}
