// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';

import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/utils/chart_utils.dart';

void main() {
  group('chart utils', () {
    test('totals entries by day', () async {
      var entries = [
        Entry(10, DateTime(2020, 3, 1)),
        Entry(10, DateTime(2020, 3, 1)),
        Entry(10, DateTime(2020, 3, 2)),
      ];
      var totals = entryTotalsByDay(entries, 2, today: DateTime(2020, 3, 2));
      expect(totals, hasLength(3));
      expect(totals[1].value, 20);
      expect(totals[2].value, 10);
    });
    test('days', () async {
      expect(
          DateTime.utc(2020, 1, 3).difference(DateTime.utc(2020, 1, 2)).inDays,
          1);
    });
  });
}
