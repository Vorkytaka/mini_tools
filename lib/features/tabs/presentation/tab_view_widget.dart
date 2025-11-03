import 'package:flutter/cupertino.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';

import '../domain/state/tabs_state.dart';
import '../domain/tabs_feature.dart';

final class TabViewWidget extends StatelessWidget {
  const TabViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<TabsFeature, TabsState>(
      builder: (context, state) {
        final tab = state.activeTab;
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
