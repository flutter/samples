import 'package:shared/shared.dart';
import 'package:test/test.dart';

void main() {
  test('Increment serialization', () {
    expect(Increment(by: 3).toJson(), <String, dynamic>{'by': 3});
  });
  test('Increment derialization', () {
    expect(Increment.fromJson(<String, dynamic>{'by': 5}), Increment(by: 5));
  });
  test('Count serialization', () {
    expect(Count(3).toJson(), <String, dynamic>{'value': 3});
  });
  test('Count derialization', () {
    expect(Count.fromJson(<String, dynamic>{'value': 5}), Count(5));
  });
}
