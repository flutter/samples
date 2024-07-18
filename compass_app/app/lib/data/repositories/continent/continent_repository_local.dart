import 'dart:math';

import 'package:compass_model/model.dart';
import 'package:flutter/material.dart';

import '../../../utils/result.dart';
import 'continent_repository.dart';

/// Local data source with all possible continents.
class ContinentRepositoryLocal implements ContinentRepository {
  @override
  Future<Result<List<Continent>>> getContinents() async {
    // Simulate network loading and random errors
    // await Future.delayed(Durations.long1);
    // if (Random().nextBool()) {
    //   return Result.error(Exception('Random error!'));
    // }

    return Future.value(
      Result.ok(
        [
          const Continent(
            name: 'Europe',
            imageUrl: 'https://rstr.in/google/tripedia/TmR12QdlVTT',
          ),
          const Continent(
            name: 'Asia',
            imageUrl: 'https://rstr.in/google/tripedia/VJ8BXlQg8O1',
          ),
          const Continent(
            name: 'South America',
            imageUrl: 'https://rstr.in/google/tripedia/flm_-o1aI8e',
          ),
          const Continent(
            name: 'Africa',
            imageUrl: 'https://rstr.in/google/tripedia/-nzi8yFOBpF',
          ),
          const Continent(
            name: 'North America',
            imageUrl: 'https://rstr.in/google/tripedia/jlbgFDrSUVE',
          ),
          const Continent(
            name: 'Oceania',
            imageUrl: 'https://rstr.in/google/tripedia/vxyrDE-fZVL',
          ),
          const Continent(
            name: 'Australia',
            imageUrl: 'https://rstr.in/google/tripedia/z6vy6HeRyvZ',
          ),
        ],
      ),
    );
  }
}
