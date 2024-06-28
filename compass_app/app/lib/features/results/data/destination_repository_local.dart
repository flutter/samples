import 'dart:convert';

import 'package:compass_app/common/utils/result.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';

import 'package:flutter/services.dart' show rootBundle;

/// Local implementation of DestinationRepository
/// Uses data from assets folder
class DestinationRepositoryLocal implements DestinationRepository {
  @override
  Future<Result<List<Destination>>> getDestinations() async {
    try {
      final localData = await _loadAsset();
      final list = _parse(localData);
      return Result.ok(list);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<String> _loadAsset() async {
    return await rootBundle.loadString('assets/destinations.json');
  }

  List<Destination> _parse(String localData) {
    final parsed = (jsonDecode(localData) as List).cast<Map<String, dynamic>>();

    return parsed
        .map<Destination>((json) => Destination.fromJson(json))
        .toList();
  }
}
