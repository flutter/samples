import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/models/region.dart';
import '../../../data/repositories/region/region_repository.dart';
import '../../../utils/result.dart';

final _dateFormat = DateFormat('yyyy-MM-dd');

class SearchFormViewModel extends ChangeNotifier {
  SearchFormViewModel({
    required RegionRepository regionRepository,
  }) : _regionRepository = regionRepository {
    load();
  }

  final RegionRepository _regionRepository;
  List<Region> _regions = [];
  String? _selectedRegion;
  DateTimeRange? _dateRange;
  int _guests = 0;

  /// True if the form is valid and can be submitted
  bool get valid => _guests > 0 && _selectedRegion != null && _dateRange != null;

  /// Returns the search query string to call the Results screen
  /// e.g. 'destination=Europe&checkIn=2024-05-09&checkOut=2024-05-24&guests=1',
  /// Must be called only if [valid] is true
  get searchQuery {
    assert(valid, "Called searchQuery when the form is not valid");
    assert(_selectedRegion != null, "Called searchQuery without a region");
    assert(_dateRange != null, "Called searchQuery without a date range");
    assert(_guests > 0, "Called searchQuery without guests");
    final startDate = _dateRange!.start;
    final endDate = _dateRange!.end;
    return 'destination=$_selectedRegion&checkIn=${_dateFormat.format(endDate)}&checkOut=${_dateFormat.format(startDate)}&guests=$_guests';
  }

  /// List of regions
  /// Loaded in [load] method
  List<Region> get regions => _regions;

  /// Load the list of regions
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

  /// Selected region
  String? get selectedRegion => _selectedRegion;

  /// Set selected region
  /// Set to null to clear the selection
  set selectedRegion(String? region) {
    _selectedRegion = region;
    notifyListeners();
  }

  /// Date range
  DateTimeRange? get dateRange => _dateRange;

  /// Set date range
  set dateRange(DateTimeRange? dateRange) {
    if (_dateRange != dateRange) {
      _dateRange = dateRange;
    }
    notifyListeners();
  }

  /// Number of guests
  int get guests => _guests;

  /// Set number of guests
  /// If the quantity is negative, it will be set to 0
  set guests(int quantity) {
    if (quantity < 0) {
      _guests = 0;
    } else {
      _guests = quantity;
    }
    notifyListeners();
  }

}
