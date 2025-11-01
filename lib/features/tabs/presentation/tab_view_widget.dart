import 'package:flutter/cupertino.dart';

import '../domain/tab_manager.dart';

final class TabViewWidget extends StatelessWidget {
  final TabManager _manager;

  const TabViewWidget({
    required TabManager manager,
    super.key,
  }) : _manager = manager;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _manager.activeTabStream,
      builder: (context, snapshot) {
        final tab = snapshot.data;
        if (tab == null) {
          return const SizedBox.shrink();
        }

        return Builder(
          key: ValueKey(tab.id),
          builder: tab.instance.buildScreen,
        );
      },
    );
  }
}
