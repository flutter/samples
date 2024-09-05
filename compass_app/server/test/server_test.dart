import 'dart:convert';
import 'dart:io';

// TODO: Remove the compass_model and replace by a server-side model
import 'package:compass_model/model.dart' hide Booking;
import 'package:compass_server/config/constants.dart';
import 'package:compass_server/model/booking/booking.dart';
import 'package:compass_server/model/login_request/login_request.dart';
import 'package:compass_server/model/login_response/login_response.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

void main() {
  final port = '8080';
  final host = 'http://0.0.0.0:$port';
  late Process p;

  var headers = {
    'Authorization': 'Bearer ${Constants.token}',
  };

  setUp(() async {
    p = await Process.start(
      'dart',
      ['run', 'bin/compass_server.dart'],
      environment: {'PORT': port},
    );
    // Wait for server to start and print to stdout.
    await p.stdout.first;
  });

  tearDown(() => p.kill());

  test('Get Continent end-point', () async {
    // Query /continent end-point
    final response = await get(
      Uri.parse('$host/continent'),
      headers: headers,
    );

    expect(response.statusCode, 200);
    // Parse json response list
    final list = jsonDecode(response.body) as List<dynamic>;
    // Parse items
    final continents = list.map((element) => Continent.fromJson(element));
    expect(continents.length, 7);
    expect(continents.first.name, 'Europe');
  });

  test('Get Destination end-point', () async {
    // Query /destination end-point
    final response = await get(
      Uri.parse('$host/destination'),
      headers: headers,
    );
    expect(response.statusCode, 200);
    // Parse json response list
    final list = jsonDecode(response.body) as List<dynamic>;
    // Parse items
    final destination = list.map((element) => Destination.fromJson(element));
    expect(destination.length, 137);
    expect(destination.first.name, 'Alaska');
  });

  test('Get Activities end-point', () async {
    // Query /destination/alaska/activity end-point
    final response = await get(
      Uri.parse('$host/destination/alaska/activity'),
      headers: headers,
    );
    expect(response.statusCode, 200);
    // Parse json response list
    final list = jsonDecode(response.body) as List<dynamic>;
    // Parse items
    final activity = list.map((element) => Activity.fromJson(element));
    expect(activity.length, 20);
    expect(activity.first.name, 'Glacier Trekking and Ice Climbing');
  });

  test('Get bookings end-point', () async {
    final response = await get(
      Uri.parse('$host/booking'),
      headers: headers,
    );
    expect(response.statusCode, 200);
    // Parse json response list
    final list = jsonDecode(response.body) as List<dynamic>;
    // Parse items
    final bookings = list.map((element) => Booking.fromJson(element));
    expect(bookings.length, 1);
    expect(bookings.first.id, 0);
  });

  test('Get booking with id 0', () async {
    final response = await get(
      Uri.parse('$host/booking/0'),
      headers: headers,
    );

    expect(response.statusCode, 200);
    final booking = Booking.fromJson(jsonDecode(response.body));

    // Got booking with id 0
    expect(booking.id, 0);
  });

  test('Store a booking', () async {
    final response = await post(
      Uri.parse('$host/booking'),
      headers: headers,
      body: jsonEncode(
        Booking(
          name: "DESTINATION, CONTINENT",
          startDate: DateTime(2024, 1, 1),
          endDate: DateTime(2024, 2, 2),
          destinationRef: 'REF',
          activitiesRef: ['ACT1', 'ACT2'],
        ),
      ),
    );

    expect(response.statusCode, 201);
    final booking = Booking.fromJson(jsonDecode(response.body));

    // New ID should be 1
    expect(booking.id, 1);
  });

  test('404', () async {
    final response = await get(
      Uri.parse('$host/foobar'),
      headers: headers,
    );
    expect(response.statusCode, 404);
  });

  test('Login with valid credentials', () async {
    final response = await post(
      Uri.parse('$host/login'),
      body: jsonEncode(
        LoginRequest(
          email: Constants.email,
          password: Constants.password,
        ),
      ),
    );
    expect(response.statusCode, 200);
    final loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
    expect(loginResponse.token, Constants.token);
    expect(loginResponse.userId, Constants.userId);
  });

  test('Login with wrong credentials', () async {
    final response = await post(
      Uri.parse('$host/login'),
      body: jsonEncode(
        LoginRequest(
          email: 'INVALID',
          password: 'INVALID',
        ),
      ),
    );
    expect(response.statusCode, 401);
  });

  test('Unauthorized request', () async {
    // Query /continent end-point
    // No auth headers
    final response = await get(
      Uri.parse('$host/continent'),
    );

    expect(response.statusCode, 401);
  });
}
