import 'package:compass_app/common/utils/response.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:compass_app/features/results/business/usecases/search_destination_usecase.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SearchDestinationUsecase tests', () {
    final fakeRepository = _FakeRepository();
    final usecase = SearchDestinationUsecase(repository: fakeRepository);

    test('no filters return original list', () async {
      final result = await usecase.search();
      expect(result, isA<Ok>());
      expect(result.asOk.value.length, 2);
      expect(result.asOk.value[0].name, 'name1');
      expect(result.asOk.value[1].name, 'name2');
    });

    test('filter by continent', () async {
      final result = await usecase.search(continent: 'continent1');
      expect(result, isA<Ok>());
      expect(result.asOk.value.length, 1);
      expect(result.asOk.value.first.name, 'name1');
    });
  });
}

class _FakeRepository implements DestinationRepository {
  @override
  Future<Response<List<Destination>>> getDestinations() {
    return Future.value(
      Response.ok(
        [
          Destination(
            ref: 'ref1',
            name: 'name1',
            country: 'country1',
            continent: 'continent1',
            knownFor: 'knownFor1',
            tags: ['tags1'],
            imageUrl: 'imageUrl1',
          ),
          Destination(
            ref: 'ref2',
            name: 'name2',
            country: 'country2',
            continent: 'continent2',
            knownFor: 'knownFor2',
            tags: ['tags2'],
            imageUrl: 'imageUrl2',
          ),
        ],
      ),
    );
  }
}
