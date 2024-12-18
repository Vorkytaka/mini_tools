part of 'material_colors_tool.dart';

const double _itemWidth = 220;
const double _spacing = 10;

class MaterialColorTool extends StatelessWidget {
  const MaterialColorTool({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.materialColors.title),
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => _Body(controller: controller),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final ScrollController? controller;

  const _Body({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      desiredItemWidth: _itemWidth + _spacing,
      minSpacing: _spacing,
      children: _materialColorItems
          .map((colors) => _ColorCollectionWidget(collection: colors))
          .toList(growable: false),
    );
  }
}

class _ColorCollectionWidget extends StatelessWidget {
  final _ColorCollection collection;

  const _ColorCollectionWidget({
    required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    final colors = collection.colors;

    return Column(
      children: [
        for (int i = 0; i < colors.length; i++)
          _ColorItemWidget(
            pretitle: i == 0 ? collection.name : null,
            item: colors[i],
          ),
      ],
    );
  }
}

class _ColorItemWidget extends StatelessWidget {
  final String? pretitle;
  final _ColorItem item;

  const _ColorItemWidget({
    required this.pretitle,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final pretitle = this.pretitle;
    final title = pretitle != null && pretitle.isNotEmpty
        ? '$pretitle ${item.title}'
        : item.title;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Clipboard.setData(ClipboardData(text: item.hex));
        },
        child: Container(
          width: _itemWidth,
          height: 50,
          color: item.color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: item.brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(title), Text(item.hex)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
