import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/tools/datetime_converter/feature/datetime_converter_feature.dart';
import 'package:mini_tools/tools/datetime_converter/feature/datetime_converter_update.dart';
import 'package:timezone/timezone.dart';

void main() {
  group('DatetimeConverterUpdate Tests', () {
    final tzDateTime = TZDateTime(UTC, 2023, 8, 15, 12, 30, 45, 500);

    test('UpdateInputMessage updates input and triggers parse effect', () {
      final initialState = DatetimeConverterState.defaultValue();

      final result = datetimeConverterUpdate(
        initialState,
        const DatetimeConverterMessage.updateInput('2023-08-15'),
      );

      expect(result.$1?.input, '2023-08-15');
      expect(result.$2, [
        const DatetimeConverterEffect.parse(
          input: '2023-08-15',
          type: InputType.sec, // Default input type
        ),
      ]);
    });

    test('UpdateDatetimeMessage updates datetime', () {
      final initialState = DatetimeConverterState.defaultValue();

      final result = datetimeConverterUpdate(
        initialState,
        DatetimeConverterMessage.updateDatetime(tzDateTime),
      );

      expect(result.$1?.datetime, tzDateTime);
      expect(result.$2, isEmpty);
    });

    test('UpdateInputTypeMessage converts datetime to new type', () {
      final initialState = DatetimeConverterState.defaultValue().copyWith(
        datetime: tzDateTime,
        inputType: InputType.sec,
      );

      final result = datetimeConverterUpdate(
        initialState,
        const DatetimeConverterMessage.updateInputType(InputType.ms),
      );

      expect(result.$1?.inputType, InputType.ms);
      expect(result.$1?.input, '${tzDateTime.millisecondsSinceEpoch}');
    });

    test('ClearMessage resets state', () {
      final initialState = DatetimeConverterState.defaultValue().copyWith(
        input: '1660000000000',
        datetime: tzDateTime,
      );

      final result = datetimeConverterUpdate(
        initialState,
        const DatetimeConverterMessage.clear(),
      );

      expect(result.$1?.input, '');
      expect(result.$1?.datetime, isNull);
    });

    test('GetNowMessage triggers GetNow effect', () {
      final result = datetimeConverterUpdate(
        DatetimeConverterState.defaultValue(),
        const DatetimeConverterMessage.getNow(),
      );

      expect(result.$2, [const DatetimeConverterEffect.getNow()]);
    });

    test('SetNowMessage updates datetime and input', () {
      final now = TZDateTime.now(UTC);
      final result = datetimeConverterUpdate(
        DatetimeConverterState.defaultValue().copyWith(
          inputType: InputType.iso,
        ),
        DatetimeConverterMessage.setNow(now),
      );

      expect(result.$1?.datetime, now);
      expect(result.$1?.input, now.toIso8601String());
    });

    test('UpdateDatetimeFormatMessage updates format', () {
      final initialState = DatetimeConverterState.defaultValue();

      final result = datetimeConverterUpdate(
        initialState,
        const DatetimeConverterMessage.updateDatetimeFormat(
          DatetimeFormat.iso8601,
        ),
      );

      expect(result.$1?.format, DatetimeFormat.iso8601);
    });
  });
}
