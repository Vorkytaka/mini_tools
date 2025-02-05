import 'package:mini_tea/feature.dart';

import 'message/cron_message.dart';
import 'parser/cron_parser.dart';
import 'state/cron_state.dart';

Next<CronState, void> cronUpdate(CronState state, CronMessage message) {
  switch (message) {
    case InputUpdateMessage():
      if (message.input == state.input) {
        return next();
      }

      Cron? cron;
      try {
        cron = parseCron(message.input);
      } on FormatException catch (_) {
        cron = null;
      }
      return next(
        state: state.copyWith(
          input: message.input,
          cron: cron,
        ),
      );
  }
}
