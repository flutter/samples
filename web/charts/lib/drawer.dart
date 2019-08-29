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

/// A menu drawer supporting toggling theme and performance overlay.
class GalleryDrawer extends StatelessWidget {
  final bool showPerformanceOverlay;
  final ValueChanged<bool> onShowPerformanceOverlayChanged;

  GalleryDrawer(
      {Key key,
      this.showPerformanceOverlay,
      this.onShowPerformanceOverlayChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(children: <Widget>[
        // Performance overlay toggle.
        new ListTile(
          leading: new Icon(Icons.assessment),
          title: new Text('Performance Overlay'),
          onTap: () {
            onShowPerformanceOverlayChanged(!showPerformanceOverlay);
          },
          selected: showPerformanceOverlay,
          trailing: new Checkbox(
            value: showPerformanceOverlay,
            onChanged: (bool value) {
              onShowPerformanceOverlayChanged(!showPerformanceOverlay);
            },
          ),
        ),
      ]),
    );
  }
}
