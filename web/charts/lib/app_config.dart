// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

/// A particular configuration of the app.
class AppConfig {
  final String appName;
  final String appLink;
  final ThemeData theme;
  final bool showPerformanceOverlay;

  AppConfig(
      {this.appName, this.appLink, this.theme, this.showPerformanceOverlay});
}

/// The default configuration of the app.
AppConfig get defaultConfig {
  return new AppConfig(
    appName: 'Charts Gallery',
    appLink: '',
    theme: new ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.lightBlue,
    ),
    showPerformanceOverlay: false,
  );
}
