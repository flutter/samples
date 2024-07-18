import 'dart:convert';
import 'dart:math';

import 'package:compass_model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../../config/assets.dart';
import '../../../utils/result.dart';
import 'destination_repository.dart';

/// Local implementation of DestinationRepository
/// Uses data from assets folder
class DestinationRepositoryLocal implements DestinationRepository {
  /// Obtain list of destinations from local assets
  @override
  Future<Result<List<Destination>>> getDestinations() async {
    // Simulate network loading and random errors
    // await Future.delayed(Durations.long1);
    // if (Random().nextBool()) {
    //   return Result.error(Exception('Random error!'));
    // }

    try {
      final localData = await _loadAsset();
      final list = _parse(localData);
      return Result.ok(list);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<String> _loadAsset() async {
    return await rootBundle.loadString(Assets.destinations);
  }

  List<Destination> _parse(String localData) {
    final parsed = (jsonDecode(localData) as List).cast<Map<String, dynamic>>();

    return parsed
        .map<Destination>((json) => Destination.fromJson(json))
        .toList();
  }
}
