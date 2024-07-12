import '../../../utils/result.dart';
import '../../models/region.dart';
import 'region_repository.dart';

/// Local data source with all possible regions.
class RegionRepositoryLocal implements RegionRepository {
  @override
  Future<Result<List<Region>>> getDestinations() {
    return Future.value(
      Result.ok(
        [
          Region(
            name: 'Europe',
            imageUrl: 'https://rstr.in/google/tripedia/TmR12QdlVTT',
          ),
          Region(
            name: 'Asia',
            imageUrl: 'https://rstr.in/google/tripedia/VJ8BXlQg8O1',
          ),
          Region(
            name: 'South America',
            imageUrl: 'https://rstr.in/google/tripedia/flm_-o1aI8e',
          ),
          Region(
            name: 'Africa',
            imageUrl: 'https://rstr.in/google/tripedia/-nzi8yFOBpF',
          ),
          Region(
            name: 'North America',
            imageUrl: 'https://rstr.in/google/tripedia/jlbgFDrSUVE',
          ),
          Region(
            name: 'Oceania',
            imageUrl: 'https://rstr.in/google/tripedia/vxyrDE-fZVL',
          ),
          Region(
            name: 'Australia',
            imageUrl: 'https://rstr.in/google/tripedia/z6vy6HeRyvZ',
          ),
        ],
      ),
    );
  }
}
