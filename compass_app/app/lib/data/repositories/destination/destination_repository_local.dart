import 'dart:convert';

import '../../../utils/result.dart';
import '../../models/destination.dart';
import 'destination_repository.dart';

import 'package:flutter/services.dart' show rootBundle;

/// Local implementation of DestinationRepository
/// Uses data from assets folder
class DestinationRepositoryLocal implements DestinationRepository {
  /// Obtain list of destinations from local assets
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
