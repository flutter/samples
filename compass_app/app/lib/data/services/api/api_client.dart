import 'dart:convert';
import 'dart:io';
import 'package:compass_model/model.dart';

import '../../../utils/result.dart';
import 'model/booking/booking_api_model.dart';

/// Adds the `Authentication` header to a header configuration.
typedef AuthHeaderProvider = String? Function();

// TODO: Configurable baseurl/host/port
class ApiClient {
  ApiClient();

  AuthHeaderProvider? _authHeaderProvider;

  set authHeaderProvider(AuthHeaderProvider authHeaderProvider) {
    _authHeaderProvider = authHeaderProvider;
  }

  Future<void> _authHeader(HttpHeaders headers) async {
    final header = _authHeaderProvider?.call();
    if (header != null) {
      headers.add(HttpHeaders.authorizationHeader, header);
    }
  }

  Future<Result<List<Continent>>> getContinents() async {
    final client = HttpClient();
    try {
      final request = await client.get('localhost', 8080, '/continent');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        return Result.ok(
            json.map((element) => Continent.fromJson(element)).toList());
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<Destination>>> getDestinations() async {
    final client = HttpClient();
    try {
      final request = await client.get('localhost', 8080, '/destination');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        return Result.ok(
            json.map((element) => Destination.fromJson(element)).toList());
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<Activity>>> getActivityByDestination(String ref) async {
    final client = HttpClient();
    try {
      final request =
          await client.get('localhost', 8080, '/destination/$ref/activity');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final activities =
            json.map((element) => Activity.fromJson(element)).toList();
        return Result.ok(activities);
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<BookingApiModel>>> getBookings() async {
    final client = HttpClient();
    try {
      final request = await client.get('localhost', 8080, '/booking');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final bookings =
            json.map((element) => BookingApiModel.fromJson(element)).toList();
        return Result.ok(bookings);
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<BookingApiModel>> getBooking(int id) async {
    final client = HttpClient();
    try {
      final request = await client.get('localhost', 8080, '/booking/$id');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final booking = BookingApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(booking);
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<BookingApiModel>> postBooking(BookingApiModel booking) async {
    final client = HttpClient();
    try {
      final request = await client.post('localhost', 8080, '/booking');
      await _authHeader(request.headers);
      request.write(jsonEncode(booking));
      final response = await request.close();
      if (response.statusCode == 201) {
        final stringData = await response.transform(utf8.decoder).join();
        final booking = BookingApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(booking);
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
