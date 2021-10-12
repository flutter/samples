// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';

import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/api/mock.dart';

void main() {
  group('mock dashboard API', () {
    late DashboardApi api;

    setUp(() {
      api = MockDashboardApi();
    });

    group('items', () {
      test('insert', () async {
        var category = await api.categories.insert(Category('Coffees Drank'));
        expect(category.name, 'Coffees Drank');
      });

      test('delete', () async {
        await api.categories.insert(Category('Coffees Drank'));
        var category = await api.categories.insert(Category('Miles Ran'));
        var removed = await api.categories.delete(category.id!);

        expect(removed, isNotNull);
        expect(removed!.name, 'Miles Ran');

        var categories = await api.categories.list();
        expect(categories, hasLength(1));
      });

      test('update', () async {
        var category = await api.categories.insert(Category('Coffees Drank'));
        await api.categories.update(Category('Bagels Consumed'), category.id!);

        var latest = await api.categories.get(category.id!);
        expect(latest, isNotNull);
        expect(latest!.name, equals('Bagels Consumed'));
      });
      test('subscribe', () async {
        var stream = api.categories.subscribe();

        stream.listen(expectAsync1((x) {
          expect(x, hasLength(1));
          expect(x.first.name, equals('Coffees Drank'));
        }, count: 1));
        await api.categories.insert(Category('Coffees Drank'));
      });
    });

    group('entry service', () {
      late Category category;
      DateTime dateTime = DateTime(2020, 1, 1, 30, 45);

      setUp(() async {
        category =
            await api.categories.insert(Category('Lines of code committed'));
      });

      test('insert', () async {
        var entry = await api.entries.insert(category.id!, Entry(1, dateTime));

        expect(entry.value, 1);
        expect(entry.time, dateTime);
      });

      test('delete', () async {
        await api.entries.insert(category.id!, Entry(1, dateTime));
        var entry2 = await api.entries.insert(category.id!, Entry(2, dateTime));

        await api.entries.delete(category.id!, entry2.id!);

        var entries = await api.entries.list(category.id!);
        expect(entries, hasLength(1));
      });

      test('update', () async {
        var entry = await api.entries.insert(category.id!, Entry(1, dateTime));
        var updated = await api.entries
            .update(category.id!, entry.id!, Entry(2, dateTime));
        expect(updated.value, 2);
      });

      test('subscribe', () async {
        var stream = api.entries.subscribe(category.id!);

        stream.listen(expectAsync1((x) {
          expect(x, hasLength(1));
          expect(x.first.value, equals(1));
        }, count: 1));

        await api.entries.insert(category.id!, Entry(1, dateTime));
      });
    });
  });
}
