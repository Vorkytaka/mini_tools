part of 'qr_code_screen.dart';

class _InputSide extends StatelessWidget {
  const _InputSide();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              InputText(),
              SizedBox(width: 8),
              _ClearButton(),
              Spacer(),
              _BytesCount(),
            ],
          ),
        ),
        SizedBox(height: 8),
        Expanded(child: _InputField()),
      ],
    );
  }
}

class _InputField extends StatefulWidget {
  const _InputField();

  @override
  State<_InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<_InputField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    final state = context.read<QrCodeFeature>().state;
    _controller.text = state.input;

    _controller.addListener(_onUpdate);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final state = context.watch<QrCodeFeature>().state;
    if (_controller.text != state.input) {
      _controller.text = state.input;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosTextField(
      controller: _controller,
      minLines: null,
      maxLines: null,
      textAlignVertical: const TextAlignVertical(y: -1),
    );
  }

  void _onUpdate() {
    final text = _controller.text;
    context.read<QrCodeFeature>().accept(QrCodeMessage.updateInput(text));
  }
}

class _ClearButton extends StatelessWidget {
  const _ClearButton();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return PushButton(
      controlSize: ControlSize.regular,
      onPressed: () {
        context.read<QrCodeFeature>().accept(
          const QrCodeMessage.updateInput(''),
        );
      },
      secondary: true,
      child: Text(t.common.clear),
    );
  }
}

class _BytesCount extends StatelessWidget {
  const _BytesCount();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<QrCodeFeature, QrCodeState>(
      buildWhen: (prev, curr) => prev.input != curr.input,
      builder: (context, state) {
        final bytes = utf8.encode(state.input).length;
        return Text(t.common.bytesCount(n: bytes, bytes: bytes));
      },
    );
  }
}
