import 'dart:convert';
import 'dart:io';

import 'package:compass_model/model.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../config/assets.dart';

class DestinationApi {
  final List<Destination> destinations =
      (json.decode(File(Assets.destinations).readAsStringSync()) as List)
          .map((element) => Destination.fromJson(element))
          .toList();
  final List<Activity> activities =
      (json.decode(File(Assets.activities).readAsStringSync()) as List)
          .map((element) => Activity.fromJson(element))
          .toList();

  Router get router {
    final router = Router();

    router.get('/', (Request request) {
      return Response.ok(
        json.encode(destinations),
        headers: {'Content-Type': 'application/json'},
      );
    });

    router.get('/<id>/activity', (Request request, String id) {
      final list = activities
          .where((activity) => activity.destinationRef == id)
          .toList();
      return Response.ok(
        json.encode(list),
        headers: {'Content-Type': 'application/json'},
      );
    });

    return router;
  }
}
