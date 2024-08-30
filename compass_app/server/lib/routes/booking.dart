import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../config/assets.dart';
import '../model/booking/booking.dart';

/// Allows the user to save and restore bookings.
///
/// Bookings are stored in memory for demo purposes,
/// so they are lost when the server stops.
///
/// For demo purposes, this API includes a default pre-generated booking.
///
/// The [Booking.id] is also the index in the bookings list.
class BookingApi {
  BookingApi() {
    // Create a default booking
    var destination = Assets.destinations.first;
    final activitiesRef = Assets.activities
        .where((activity) => activity.destinationRef == destination.ref)
        .map((activity) => activity.ref)
        .toList();
    _bookings.insert(
      0,
      Booking(
        id: 0,
        name: '${destination.name}, ${destination.continent}',
        startDate: DateTime(2024, 7, 20),
        endDate: DateTime(2024, 8, 15),
        destinationRef: destination.ref,
        activitiesRef: activitiesRef,
      ),
    );
  }

  // Bookings are kept in memory for demo purposes.
  // To keep things simple, the id is also the index in the list.
  final List<Booking> _bookings = List.empty(growable: true);

  Router get router {
    final router = Router();

    // Get User bookings
    router.get('/', (Request request) {
      return Response.ok(
        json.encode(_bookings),
        headers: {'Content-Type': 'application/json'},
      );
    });

    // Get a booking by id
    router.get('/<id>', (Request request, String id) {
      final index = int.parse(id);
      if (index < 0 || index >= _bookings.length) {
        return Response.notFound('Invalid id');
      }
      return Response.ok(
        json.encode(_bookings[index]),
        headers: {'Content-Type': 'application/json'},
      );
    });

    // Save a new booking
    router.post('/', (Request request) async {
      final body = await request.readAsString();
      final booking = Booking.fromJson(json.decode(body));

      if (booking.id != null) {
        // POST endpoint only allows newly created bookings
        return Response.badRequest(
            body: 'Booking already has id, use PUT instead.');
      }

      // Add ID to new booking
      final id = _bookings.length;
      final bookingWithId = booking.copyWith(id: id);

      // Store booking
      _bookings.add(bookingWithId);

      // Respond with newly created booking
      return Response(
        201, // created
        body: json.encode(bookingWithId),
        headers: {'Content-Type': 'application/json'},
      );
    });

    return router;
  }
}
