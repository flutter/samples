// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/activity/activity_repository_local.dart';
import 'package:compass_app/data/services/local/local_data_service.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/utils/result.dart';

void main() {
  group('ActivityRepositoryLocal tests', () {
    // To load assets
    TestWidgetsFlutterBinding.ensureInitialized();

    final repository = ActivityRepositoryLocal(
      localDataService: LocalDataService(),
    );

    test('should get by destination ref', () async {
      final result = await repository.getByDestination('alaska');
      expect(result, isA<Ok>());

      final list = result.asOk.value;
      expect(list.length, 20);

      final activity = list.first;
      expect(activity.name, 'Glacier Trekking and Ice Climbing');
    });
  });
}
