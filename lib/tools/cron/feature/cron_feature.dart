import 'package:mini_tea/feature.dart';

import 'cron_update.dart';
import 'message/cron_message.dart';
import 'state/cron_state.dart';

export 'message/cron_message.dart';
export 'state/cron_state.dart';

typedef CronFeature = Feature<CronState, CronMessage, void>;

CronFeature cronFeatureFactory() => CronFeature(
      initialState: CronState.init(),
      update: cronUpdate,
    );
