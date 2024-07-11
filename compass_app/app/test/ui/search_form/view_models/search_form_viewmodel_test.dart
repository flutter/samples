import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';

import '../../../util/fakes/repositories/fake_region_repository.dart';

void main() {
  group('SearchFormViewModel Tests', () {
    late SearchFormViewModel viewModel;
    late FakeRegionRepository fakeRegionRepository = FakeRegionRepository();

    setUp(() {
      viewModel = SearchFormViewModel(regionRepository: fakeRegionRepository);
    });

    test('Initial values are correct', () {
      expect(viewModel.valid, false);
      expect(viewModel.selectedRegion, null);
      expect(viewModel.dateRange, null);
      expect(viewModel.guests, 0);
    });

    test('Setting dateRange updates correctly', () {
      final DateTimeRange newDateRange = DateTimeRange(
        start: DateTime(2024, 1, 1),
        end: DateTime(2024, 1, 31),
      );
      viewModel.dateRange = newDateRange;
      expect(viewModel.dateRange, newDateRange);
    });

    test('Setting selectedRegion updates correctly', () {
      viewModel.selectedRegion = 'REGION';
      expect(viewModel.selectedRegion, 'REGION');

      // Setting null should work
      viewModel.selectedRegion = null;
      expect(viewModel.selectedRegion, null);
    });

    test('Setting guests updates correctly', () {
      viewModel.guests = 2;
      expect(viewModel.guests, 2);

      // Guests number should not be negative
      viewModel.guests = -1;
      expect(viewModel.guests, 0);
    });

    test('Set all values and obtain query', () {
      expect(viewModel.valid, false);

      viewModel.guests = 2;
      viewModel.selectedRegion = 'REGION';
      final DateTimeRange newDateRange = DateTimeRange(
        start: DateTime(2024, 1, 1),
        end: DateTime(2024, 1, 31),
      );
      viewModel.dateRange = newDateRange;

      expect(viewModel.valid, true);
      expect(viewModel.searchQuery, 'destination=REGION&checkIn=2024-01-01&checkOut=2024-01-31&guests=2');
    });
  });
}