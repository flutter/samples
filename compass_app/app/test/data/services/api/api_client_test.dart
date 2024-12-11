// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/services/api/api_client.dart';
import 'package:compass_app/domain/models/continent/continent.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/mocks.dart';
import '../../../../testing/models/activity.dart';
import '../../../../testing/models/booking.dart';
import '../../../../testing/models/destination.dart';
import '../../../../testing/models/user.dart';
import '../../../../testing/utils/result.dart';

void main() {
  group('ApiClient', () {
    late MockHttpClient mockHttpClient;
    late ApiClient apiClient;

    setUp(() {
      mockHttpClient = MockHttpClient();
      apiClient = ApiClient(clientFactory: () => mockHttpClient);
    });

    test('should get continents', () async {
      final continents = [const Continent(name: 'NAME', imageUrl: 'URL')];
      mockHttpClient.mockGet('/continent', continents);
      final result = await apiClient.getContinents();
      expect(result.asOk.value, continents);
    });

    test('should get activities by destination', () async {
      final activites = [kActivity];
      mockHttpClient.mockGet(
        '/destination/${kDestination1.ref}/activity',
        activites,
      );
      final result =
          await apiClient.getActivityByDestination(kDestination1.ref);
      expect(result.asOk.value, activites);
    });

    test('should get booking', () async {
      mockHttpClient.mockGet(
        '/booking/${kBookingApiModel.id}',
        kBookingApiModel,
      );
      final result = await apiClient.getBooking(kBookingApiModel.id!);
      expect(result.asOk.value, kBookingApiModel);
    });

    test('should get bookings', () async {
      mockHttpClient.mockGet('/booking', [kBookingApiModel]);
      final result = await apiClient.getBookings();
      expect(result.asOk.value, [kBookingApiModel]);
    });

    test('should get destinations', () async {
      mockHttpClient.mockGet('/destination', [kDestination1]);
      final result = await apiClient.getDestinations();
      expect(result.asOk.value, [kDestination1]);
    });

    test('should get user', () async {
      mockHttpClient.mockGet('/user', userApiModel);
      final result = await apiClient.getUser();
      expect(result.asOk.value, userApiModel);
    });

    test('should post booking', () async {
      mockHttpClient.mockPost('/booking', kBookingApiModel);
      final result = await apiClient.postBooking(kBookingApiModel);
      expect(result.asOk.value, kBookingApiModel);
    });

    test('should delete booking', () async {
      mockHttpClient.mockDelete('/booking/0');
      final result = await apiClient.deleteBooking(0);
      expect(result, isA<Ok<void>>());
    });
  });
}
