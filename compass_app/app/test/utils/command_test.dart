// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/utils/command.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../testing/utils/result.dart';

void main() {
  group('Command0 tests', () {
    test('should complete void command', () async {
      // Void action
      final command = Command0<void>(() => Future.value(Result.ok(null)));

      // Run void action
      await command.execute();

      // Action completed
      expect(command.completed, true);
    });

    test('should complete bool command', () async {
      // Action that returns bool
      final command = Command0<bool>(() => Future.value(Result.ok(true)));

      // Run action with result
      await command.execute();

      // Action completed
      expect(command.completed, true);
      expect(command.result!.asOk.value, true);
    });

    test('running should be true', () async {
      final command = Command0<void>(() => Future.value(Result.ok(null)));
      final future = command.execute();

      // Action is running
      expect(command.running, true);

      // Await execution
      await future;

      // Action finished running
      expect(command.running, false);
    });

    test('should only run once', () async {
      var count = 0;
      final command = Command0<int>(() => Future.value(Result.ok(count++)));
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

    test('should handle errors', () async {
      final command =
          Command0<int>(() => Future.value(Result.error(Exception('ERROR!'))));
      await command.execute();
      expect(command.error, true);
      expect(command.result, isA<Error>());
    });
  });

  group('Command1 tests', () {
    test('should complete void command, bool argument', () async {
      // Void action with bool argument
      final command = Command1<void, bool>((a) {
        expect(a, true);
        return Future.value(Result.ok(null));
      });

      // Run void action, ignore void return
      await command.execute(true);

      expect(command.completed, true);
    });

    test('should complete bool command, bool argument', () async {
      // Action that returns bool argument
      final command =
          Command1<bool, bool>((a) => Future.value(const Result.ok(true)));

      // Run action with result and argument
      await command.execute(true);

      // Argument was passed to onComplete
      expect(command.completed, true);
      expect(command.result!.asOk.value, true);
    });
  });
}
