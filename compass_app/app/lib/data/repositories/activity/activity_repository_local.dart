import 'dart:convert';

import 'package:compass_model/model.dart';
import 'package:flutter/services.dart';

import '../../../utils/result.dart';
import 'activity_repository.dart';

class ActivityRepositoryLocal implements ActivityRepository {
  @override
  Future<Result<List<Activity>>> getByDestination(String ref) async {
    try {
      final localData = await _loadAsset();
      final list = _parse(localData);

      final activities =
          list.where((activity) => activity.destinationRef == ref).toList();

      if (activities.isEmpty) {
        return Result.error(ActivitiesNotFoundException(destinationRef: ref));
      }

      return Result.ok(activities);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<String> _loadAsset() async {
    return await rootBundle.loadString('assets/activities.json');
  }

  List<Activity> _parse(String localData) {
    final parsed = (jsonDecode(localData) as List).cast<Map<String, dynamic>>();

    return parsed.map<Activity>((json) => Activity.fromJson(json)).toList();
  }
}
