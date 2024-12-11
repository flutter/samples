// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import '../model/activity/activity.dart';
import '../model/destination/destination.dart';

abstract final class Assets {
  static const _activities = '../app/assets/activities.json';
  static const _destinations = '../app/assets/destinations.json';

  static final List<Destination> destinations =
      (json.decode(File(Assets._destinations).readAsStringSync()) as List)
          .map((element) => Destination.fromJson(element))
          .toList();
  static final List<Activity> activities =
      (json.decode(File(Assets._activities).readAsStringSync()) as List)
          .map((element) => Activity.fromJson(element))
          .toList();
}
