import 'package:mini_tea/feature.dart';

import 'message/cron_message.dart';
import 'parser/cron_parser.dart';
import 'parser/exception/cron_exception.dart';
import 'state/cron_state.dart';

Next<CronState, void> cronUpdate(CronState state, CronMessage message) {
  switch (message) {
    case InputUpdateMessage():
      if (message.input == state.input) {
        return next();
      }

      CronResult result;
      try {
        if (message.input.isEmpty) {
          result = const CronResult.idle();
        } else {
          final cron = parseCron(message.input);
          result = CronResult.success(cron);
        }
      } on CronException catch (e) {
        result = CronResult.failure(e);
      }
      return next(
        state: state.copyWith(
          input: message.input,
          result: result,
        ),
      );
  }
}
