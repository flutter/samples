import 'package:compass_app/data/services/api_client.dart';
import 'package:compass_app/utils/result.dart';
import 'package:compass_model/model.dart';
import 'package:flutter/foundation.dart';

class FakeApiClient implements ApiClient {
  // Should not increase when using cached data
  int requestCount = 0;

  @override
  Future<Result<List<Continent>>> getContinents() async {
    requestCount++;
    return Result.ok([
      const Continent(name: 'CONTINENT', imageUrl: 'URL'),
      const Continent(name: 'CONTINENT2', imageUrl: 'URL'),
      const Continent(name: 'CONTINENT3', imageUrl: 'URL'),
    ]);
  }

  @override
  Future<Result<List<Destination>>> getDestinations() async {
    requestCount++;
    return Result.ok(
      [
        const Destination(
          ref: 'ref1',
          name: 'name1',
          country: 'country1',
          continent: 'Europe',
          knownFor: 'knownFor1',
          tags: ['tags1'],
          imageUrl: 'imageUrl1',
        ),
        const Destination(
          ref: 'ref2',
          name: 'name2',
          country: 'country2',
          continent: 'Europe',
          knownFor: 'knownFor2',
          tags: ['tags2'],
          imageUrl: 'imageUrl2',
        ),
      ],
    );
  }

  @override
  Future<Result<List<Activity>>> getActivityByDestination(String ref) {
    requestCount++;

    if (ref == 'alaska') {
      return SynchronousFuture(Result.ok([
        const Activity(
          name: 'Glacier Trekking and Ice Climbing',
          description:
              'Embark on a thrilling adventure exploring the awe-inspiring glaciers of Alaska. Hike across the icy terrain, marvel at the deep blue crevasses, and even try your hand at ice climbing for an unforgettable experience.',
          locationName: 'Matanuska Glacier or Mendenhall Glacier',
          duration: 8,
          timeOfDay: TimeOfDay.morning,
          familyFriendly: false,
          price: 4,
          destinationRef: 'alaska',
          ref: 'glacier-trekking-and-ice-climbing',
          imageUrl:
              'https://storage.googleapis.com/tripedia-images/activities/alaska_glacier-trekking-and-ice-climbing.jpg',
        ),
      ]));
    }

    return SynchronousFuture(Result.ok([]));
  }
  
  @override
  set token(String? token) {
    // Nothing
  }
}
