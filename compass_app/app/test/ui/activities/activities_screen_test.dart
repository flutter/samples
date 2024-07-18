import 'package:compass_app/ui/activities/view_models/activities_viewmodel.dart';
import 'package:compass_app/ui/activities/widgets/activities_screen.dart';
import 'package:compass_app/ui/activities/widgets/activity_entry.dart';
import 'package:compass_app/ui/core/themes/theme.dart';
import 'package:compass_model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../util/fakes/repositories/fake_activities_repository.dart';
import '../../util/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('ResultsScreen widget tests', () {
    late ActivitiesViewModel viewModel;

    setUp(() {
      viewModel = ActivitiesViewModel(
        activityRepository: FakeActivityRepository(),
        itineraryConfigRepository: FakeItineraryConfigRepository(
          itineraryConfig: ItineraryConfig(
            continent: 'Europe',
            startDate: DateTime(2024, 01, 01),
            endDate: DateTime(2024, 01, 31),
            guests: 2,
            destination: 'DESTINATION',
          ),
        ),
      );
    });

    // Build and render the ResultsScreen widget
    Future<void> loadScreen(WidgetTester tester) async {
      // Load some data
      await tester.pumpWidget(
        MaterialApp(
          theme: AppTheme.lightTheme,
          home: ActivitiesScreen(
            viewModel: viewModel,
          ),
        ),
      );
    }

    testWidgets('should load screen', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);
        expect(find.byType(ActivitiesScreen), findsOneWidget);
      });
    });

    testWidgets('should list activity', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);
        expect(find.byType(ActivityEntry), findsOneWidget);
        expect(find.text('NAME'), findsOneWidget);
      });
    });

    testWidgets('should select activity', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);
        await tester.tap(find.byKey(const ValueKey('REF-checkbox')));
        expect(viewModel.selectedActivities, contains('REF'));
      });
    });
  });
}
