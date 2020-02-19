import 'package:test/test.dart';
import 'package:web_dashboard/src/data.dart';
import 'package:web_dashboard/src/services/mock.dart';

void main() {
  group('mock', () {
    group('item service', () {
      test('add', () async {
        var service = MockItemService();
        var item = await service.add('Coffees Drank');
        expect(item.name, 'Coffees Drank');
      });

      test('remove', () async {
        var service = MockItemService();
        await service.add('Coffees Drank');
        var item2 = await service.add('Miles Ran');
        var removed = await service.remove(item2.id);
        expect(removed.name, 'Miles Ran');
        var items = await service.getAll();
        expect(items, hasLength(1));
      });

      test('update', () async {
        var service = MockItemService();
        var item = await service.add('Coffees Drank');
        await service.update(item.id, Item('Bagels Consumed'));
        var latest = await service.get(item.id);
        expect(latest.name, equals('Bagels Consumed'));
      });
    });
  });
}
