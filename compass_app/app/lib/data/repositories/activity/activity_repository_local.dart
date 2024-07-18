import 'dart:convert';
import 'dart:math';

import 'package:compass_model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../config/assets.dart';
import '../../../utils/result.dart';
import 'activity_repository.dart';

/// Local implementation of ActivityRepository
/// Uses data from assets folder
class ActivityRepositoryLocal implements ActivityRepository {
  @override
  Future<Result<List<Activity>>> getByDestination(String ref) async {
    // Simulate network loading and random errors
    // await Future.delayed(Durations.long1);
    // if (Random().nextBool()) {
    //   return Result.error(Exception('Random error!'));
    // }

    try {
      final localData = await _loadAsset();
      final list = _parse(localData);

      final activities =
          list.where((activity) => activity.destinationRef == ref).toList();

      return Result.ok(activities);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<String> _loadAsset() async {
    return await rootBundle.loadString(Assets.activities);
  }

  List<Activity> _parse(String localData) {
    final parsed = (jsonDecode(localData) as List).cast<Map<String, dynamic>>();

    return parsed.map<Activity>((json) => Activity.fromJson(json)).toList();
  }
}
