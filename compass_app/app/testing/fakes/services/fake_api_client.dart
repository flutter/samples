// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/services/api/api_client.dart';
import 'package:compass_app/data/services/api/model/booking/booking_api_model.dart';
import 'package:compass_app/data/services/api/model/user/user_api_model.dart';
import 'package:compass_app/domain/models/activity/activity.dart';
import 'package:compass_app/domain/models/continent/continent.dart';
import 'package:compass_app/domain/models/destination/destination.dart';
import 'package:compass_app/utils/result.dart';

import '../../models/activity.dart';
import '../../models/booking.dart';
import '../../models/user.dart';

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
  Future<Result<List<Activity>>> getActivityByDestination(String ref) async {
    requestCount++;

    if (ref == 'alaska') {
      return Result.ok([
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
      ]);
    }

    if (ref == kBooking.destination.ref) {
      return Result.ok([kActivity]);
    }

    return Result.ok([]);
  }

  @override
  AuthHeaderProvider? authHeaderProvider;

  @override
  Future<Result<BookingApiModel>> getBooking(int id) async {
    return Result.ok(kBookingApiModel);
  }

  @override
  Future<Result<List<BookingApiModel>>> getBookings() async {
    return Result.ok([kBookingApiModel]);
  }

  List<BookingApiModel> bookings = [];

  @override
  Future<Result<BookingApiModel>> postBooking(BookingApiModel booking) async {
    final bookingWithId = booking.copyWith(id: bookings.length);
    bookings.add(bookingWithId);
    return Result.ok(bookingWithId);
  }

  @override
  Future<Result<UserApiModel>> getUser() async {
    return Result.ok(userApiModel);
  }

  @override
  Future<Result<void>> deleteBooking(int id) async {
    bookings.removeWhere((booking) => booking.id == id);
    return Result.ok(null);
  }
}
