import 'package:compass_app/data/services/shared_preferences_service.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

// --- Mock ---
class MockSharedPreferencesWithCache extends Mock
    implements SharedPreferencesWithCache {}

void main() {
  late MockSharedPreferencesWithCache mockPrefs;
  late SharedPreferencesService sut;

  setUp(() {
    mockPrefs = MockSharedPreferencesWithCache();
    sut = SharedPreferencesService(mockPrefs);
  });

  group('fetchToken', () {
    test('returns ok with token when prefs has a stored value', () async {
      when(() => mockPrefs.getString('TOKEN')).thenReturn('my-token');

      final result = await sut.fetchToken();

      expect(result, isA<Ok<String?>>());
      expect((result as Ok).value, 'my-token');
    });

    test('returns ok with null when no token is stored', () async {
      when(() => mockPrefs.getString('TOKEN')).thenReturn(null);

      final result = await sut.fetchToken();

      expect(result, isA<Ok<String?>>());
      expect((result as Ok).value, isNull);
    });

    test('returns error when getString throws an Exception', () async {
      when(() => mockPrefs.getString('TOKEN'))
          .thenThrow(Exception('read error'));

      final result = await sut.fetchToken();

      expect(result, isA<Error<String?>>());
    });
  });

  group('saveToken', () {
    test('calls setString and returns ok when token is not null', () async {
      when(() => mockPrefs.setString('TOKEN', 'new-token'))
          .thenAnswer((_) async {});

      final result = await sut.saveToken('new-token');

      expect(result, isA<Ok<void>>());
      verify(() => mockPrefs.setString('TOKEN', 'new-token')).called(1);
      verifyNever(() => mockPrefs.remove(any()));
    });

    test('calls remove and returns ok when token is null', () async {
      when(() => mockPrefs.remove('TOKEN')).thenAnswer((_) async {});

      final result = await sut.saveToken(null);

      expect(result, isA<Ok<void>>());
      verify(() => mockPrefs.remove('TOKEN')).called(1);
      verifyNever(() => mockPrefs.setString(any(), any()));
    });

    test('returns error when setString throws an Exception', () async {
      when(() => mockPrefs.setString('TOKEN', any()))
          .thenThrow(Exception('write error'));

      final result = await sut.saveToken('bad-token');

      expect(result, isA<Error<void>>());
    });

    test('returns error when remove throws an Exception', () async {
      when(() => mockPrefs.remove('TOKEN'))
          .thenThrow(Exception('remove error'));

      final result = await sut.saveToken(null);

      expect(result, isA<Error<void>>());
    });
  });
}