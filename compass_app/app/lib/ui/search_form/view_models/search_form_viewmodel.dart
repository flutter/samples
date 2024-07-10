import 'package:flutter/cupertino.dart';

import '../../../data/models/region.dart';
import '../../../data/repositories/region/region_repository.dart';
import '../../../utils/result.dart';

class SearchFormViewModel extends ChangeNotifier {
  SearchFormViewModel({
    required RegionRepository regionRepository,
  }) : _regionRepository = regionRepository {
    load();
  }

  final RegionRepository _regionRepository;

  List<Region> _regions = [];

  List<Region> get regions => _regions;

  String? _selectedRegion;

  String? get selectedRegion => _selectedRegion;

  set selectedRegion(String? region) {
    if (_selectedRegion != region) {
      _selectedRegion = region;
    } else {
      // Tapping on the same region again deselects it
      _selectedRegion = null;
    }
    notifyListeners();
  }

  Future<void> load() async {
    final result = await _regionRepository.getDestinations();
    switch (result) {
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
