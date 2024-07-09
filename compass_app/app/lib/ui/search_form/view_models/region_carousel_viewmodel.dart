import 'package:flutter/cupertino.dart';

import '../../../data/models/region.dart';
import '../../../data/repositories/region/region_repository.dart';
import '../../../utils/result.dart';

class RegionCarouselViewModel extends ChangeNotifier {
  RegionCarouselViewModel({
    required RegionRepository regionRepository,
  }) : _regionRepository = regionRepository {
    load();
  }

  final RegionRepository _regionRepository;

  List<Region> _regions = [];

  List<Region> get regions => _regions;

  Future<void> load() async {
    final result = await _regionRepository.getDestinations();
    switch(result) {
      case Ok():
        {
          _regions = result.value;
        }
      case Error():
        {
          // TODO: Handle error
          // ignore: avoid_print
          print(result.error);
        }
    }
    notifyListeners();
  }
}
