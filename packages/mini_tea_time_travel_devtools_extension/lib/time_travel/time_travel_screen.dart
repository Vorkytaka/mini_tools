import 'package:devtools_app_shared/service.dart';
import 'package:devtools_app_shared/utils.dart';
import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef TimeTravelControllerState = ({
  TimeTravelStatus status,
  LibraryState? library,
});

typedef LibraryState = ({EvalOnDartLibrary eval, Disposable disposable});

enum TimeTravelStatus { loading, loaded, libraryNotFound }

// https://www.perplexity.ai/search/kak-pravilno-rabotat-s-evalond-n6Q0WNenT5GFCshb9Riywg#0
final class TimeTravelController {
  TimeTravelControllerState _state = (
    status: TimeTravelStatus.loading,
    library: null,
  );

  Future<void> _initEval() async {
    await serviceManager.onServiceAvailable;

    try {
      final eval = EvalOnDartLibrary(
        'package:mini_tea_time_travel/src/time_travel_controller.dart',
        serviceManager.service!,
        serviceManager: serviceManager,
      );
      final disposable = Disposable();

      final library = (eval: eval, disposable: disposable);
      _state = (status: TimeTravelStatus.loaded, library: library);
    } on LibraryNotFound catch (e, st) {
      print(e);
      _state = (status: TimeTravelStatus.libraryNotFound, library: null);
    }
  }

  Future<void> getActualState() async {
    //     if (_state.status != TimeTravelStatus.loaded) {
    //       await _initEval();
    //     }
    //
    //     final library = _state.library;
    //     if (library == null) {
    //       return;
    //     }
  }
}

typedef TimeTravelState = ({List<String> history, bool isTimeTravel});

final class TimeTravelStateHolder {
  final ValueNotifier<TimeTravelState?> _notifier;

  TimeTravelStateHolder() : _notifier = ValueNotifier(null);

  void setState(TimeTravelState? state) => _notifier.value = state;

  ValueListenable<TimeTravelState?> get listenable => _notifier;
}

final class TimeTravelScreen extends StatefulWidget {
  const TimeTravelScreen({super.key});

  @override
  State<TimeTravelScreen> createState() => _TimeTravelScreenState();
}

class _TimeTravelScreenState extends State<TimeTravelScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('test'));
  }
}
