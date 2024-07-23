import 'dart:math';

import 'package:compass_app/utils/command.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Command0 tests', () {
    test('should complete void command', () async {
      // Void action
      final command = Command0<void>(() => Future.value());
      bool completed = false;

      // Run void action
      await command.execute(onComplete: (_) {
        completed = true;
      });

      // Action completed
      expect(completed, true);
    });

    test('should complete bool command', () async {
      // Action that returns bool
      final command = Command0<bool>(() => Future.value(true));
      bool completed = false;

      // Run action with result
      await command.execute(onComplete: (value) {
        completed = value;
      });

      // Action completed with result
      expect(completed, true);
    });

    test('running should be true', () async {
      final command = Command0<void>(() => Future.value());
      final future = command.execute();

      // Action is running
      expect(command.running, true);

      // Await execution
      await future;

      // Action finished running
      expect(command.running, false);
    });

    test('should only run once', () async {
      int count = 0;
      final command = Command0<int>(() => Future.value(count++));
      final future = command.execute();

      // Run multiple times
      command.execute();
      command.execute();
      command.execute();
      command.execute();

      // Await execution
      await future;

      // Action is called once
      expect(count, 1);
    });
  });

  group('Command1 tests', () {
    test('should complete void command, bool argument', () async {
      // Void action with bool argument
      final command = Command1<void, bool>((a) {
        expect(a, true);
        return Future.value();
      });

      bool completed = false;

      // Run void action, ignore void return
      await command.execute(
        argument: true,
        onComplete: (_) {
          completed = true;
        },
      );

      expect(completed, true);
    });

    test('should complete bool command, bool argument', () async {
      // Action that returns bool argument
      final command = Command1<bool, bool>((a) => Future.value(a));
      bool completed = false;

      // Run action with result and argument
      await command.execute(
        argument: true,
        onComplete: (value) {
          completed = value;
        },
      );

      // Argument was passed to onComplete
      expect(completed, true);
    });
  });
}
