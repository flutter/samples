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
import '../gallery_scaffold.dart';
import 'domain_a11y_explore_bar_chart.dart';

List<GalleryScaffold> buildGallery() {
  return [
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.accessibility),
      title: 'Screen reader enabled bar chart',
      subtitle: 'Requires TalkBack or Voiceover turned on to work. '
          'Bar chart with domain selection explore mode behavior.',
      childBuilder: () => new DomainA11yExploreBarChart.withRandomData(),
    ),
  ];
}
