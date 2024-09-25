// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/activity/activity.dart';
import '../../../domain/models/booking/booking.dart';
import '../../../domain/models/booking/booking_summary.dart';
import '../../../domain/models/destination/destination.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/booking/booking_api_model.dart';
import 'booking_repository.dart';

class BookingRepositoryRemote implements BookingRepository {
  BookingRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<Destination>? _cachedDestinations;

  @override
  Future<Result<void>> createBooking(Booking booking) async {
    try {
      final BookingApiModel bookingApiModel = BookingApiModel(
        startDate: booking.startDate,
        endDate: booking.endDate,
        name: '${booking.destination.name}, ${booking.destination.continent}',
        destinationRef: booking.destination.ref,
        activitiesRef:
            booking.activity.map((activity) => activity.ref).toList(),
      );
      return _apiClient.postBooking(bookingApiModel);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Booking>> getBooking(int id) async {
    try {
      // Get booking by ID from server
      final resultBooking = await _apiClient.getBooking(id);
      if (resultBooking is Error<BookingApiModel>) {
        return Result.error(resultBooking.error);
      }
      final booking = resultBooking.asOk.value;

      // Load destinations if not loaded yet
      if (_cachedDestinations == null) {
        final resultDestination = await _apiClient.getDestinations();
        if (resultDestination is Error<List<Destination>>) {
          return Result.error(resultDestination.error);
        }
        _cachedDestinations = resultDestination.asOk.value;
      }

      // Get destination for booking
      final destination = _cachedDestinations!.firstWhere(
          (destination) => destination.ref == booking.destinationRef);

      final resultActivities =
          await _apiClient.getActivityByDestination(destination.ref);

      if (resultActivities is Error<List<Activity>>) {
        return Result.error(resultActivities.error);
      }
      final activities = resultActivities.asOk.value
          .where((activity) => booking.activitiesRef.contains(activity.ref))
          .toList();

      return Result.ok(
        Booking(
          id: booking.id,
          startDate: booking.startDate,
          endDate: booking.endDate,
          destination: destination,
          activity: activities,
        ),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<BookingSummary>>> getBookingsList() async {
    try {
      final result = await _apiClient.getBookings();
      if (result is Error<List<BookingApiModel>>) {
        return Result.error(result.error);
      }
      final bookingsApi = result.asOk.value;
      return Result.ok(bookingsApi
          .map(
            (bookingApi) => BookingSummary(
              id: bookingApi.id!,
              name: bookingApi.name,
              startDate: bookingApi.startDate,
              endDate: bookingApi.endDate,
            ),
          )
          .toList());
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    try {
      return _apiClient.deleteBooking(id);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
