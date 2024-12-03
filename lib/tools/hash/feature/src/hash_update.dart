part of 'hash_feature.dart';

final class HashUpdate
    implements IUpdate<HashState, HashEvent, HashEffect, void> {
  const HashUpdate();

  @override
  Next<HashState, HashEffect, void> call(
    HashState state,
    HashEvent event,
  ) {
    switch (event) {
      case UpdateTextEvent():
        return next(
          state: state.copyWith(
            inputBytes: event.text.length,
            input: HashInput.text(text: event.text),
          ),
          effects: [CountTextHashEffect(event.text, state.algorithm)],
        );
      case SetFileEvent():
        return next(
          state: state.copyWith(input: HashInput.file(path: event.path)),
          effects: [CountFileHashEffect(event.path, state.algorithm)],
        );
      case DropFileEvent():
        return next(
          state: state.copyWith(
            input: const HashInput.text(text: ''),
            inputBytes: 0,
            hash: null,
          ),
        );
      case UpdateFormatEvent():
        return next(
          state: state.copyWith(format: event.format),
        );
      case UpdateHashEvent():
        final bytesCount = event.bytesInFile ?? state.inputBytes;
        return next(
          state: state.copyWith(
            hash: event.hash,
            inputBytes: bytesCount,
          ),
        );
      case UpdateAlgorithmEvent():
        final effect = state.input.map(
          text: (text) => CountTextHashEffect(text.text, event.algorithm),
          file: (file) => CountFileHashEffect(file.path, event.algorithm),
        );

        return next(
          state: state.copyWith(algorithm: event.algorithm),
          effects: [effect],
        );
    }
  }
}
