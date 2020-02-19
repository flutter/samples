import 'package:test/test.dart';

import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/api/mock.dart';

void main() {
  group('mock dashboard API', () {
    DashboardApi api;

    setUp(() {
      api = MockDashboardApi();
    });

    group('items', () {
      test('insert', () async {
        var item = await api.items.insert(Item('Coffees Drank'));
        expect(item.name, 'Coffees Drank');
      });

      test('delete', () async {
        await api.items.insert(Item('Coffees Drank'));
        var item2 = await api.items.insert(Item('Miles Ran'));
        var removed = await api.items.delete(item2.id);

        expect(removed.name, 'Miles Ran');

        var items = await api.items.list();
        expect(items, hasLength(1));
      });

      test('update', () async {
        var item = await api.items.insert(Item('Coffees Drank'));
        await api.items.update(Item('Bagels Consumed'), item.id);

        var latest = await api.items.get(item.id);
        expect(latest.name, equals('Bagels Consumed'));
      });
    });

    group('entry service', () {
      Item item;
      DateTime dateTime = DateTime(2020, 1, 1, 30, 45);

      setUp(() async {
        item = await api.items.insert(Item('Lines of code committed'));
      });

      test('insert', () async {
        var entry = await api.entries.insert(item.id, Entry(1, dateTime));

        expect(entry.value, 1);
        expect(entry.time, dateTime);
      });

      test('delete', () async {
        await api.entries.insert(item.id, Entry(1, dateTime));
        var entry2 = await api.entries.insert(item.id, Entry(2, dateTime));

        await api.entries.delete(item.id, entry2.id);

        var entries = await api.entries.list(item.id);
        expect(entries, hasLength(1));
      });

      test('update', () async {
        var entry = await api.entries.insert(item.id, Entry(1, dateTime));
        var updated =
            await api.entries.update(item.id, entry.id, Entry(2, dateTime));
        expect(updated.value, 2);
      });
    });
  });
}
