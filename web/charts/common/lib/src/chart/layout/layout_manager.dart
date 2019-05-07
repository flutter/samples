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

import 'dart:math' show Point, Rectangle;

import 'layout_view.dart' show LayoutView;

abstract class LayoutManager {
  /// Adds a view to be managed by the LayoutManager.
  void addView(LayoutView view);

  /// Removes a view previously added to the LayoutManager.
  /// No-op if it wasn't there to begin with.
  void removeView(LayoutView view);

  /// Returns true if view is already attached.
  bool isAttached(LayoutView view);

  /// Walk through the child views and determine their desired sizes storing
  /// off the information for layout.
  void measure(int width, int height);

  /// Walk through the child views and set their bounds from the perspective
  /// of the canvas origin.
  void layout(int width, int height);

  /// Returns the bounds of the drawArea. Must be called after layout().
  Rectangle<int> get drawAreaBounds;

  /// Returns the combined bounds of the drawArea, and all components that
  /// function as series draw areas. Must be called after layout().
  Rectangle<int> get drawableLayoutAreaBounds;

  /// Gets the measured size of the bottom margin, available after layout.
  int get marginBottom;

  /// Gets the measured size of the left margin, available after layout.
  int get marginLeft;

  /// Gets the measured size of the right margin, available after layout.
  int get marginRight;

  /// Gets the measured size of the top margin, available after layout.
  int get marginTop;

  /// Returns whether or not [point] is within the draw area bounds.
  bool withinDrawArea(Point<num> point);

  /// Walk through the child views and apply the function passed in.
  void applyToViews(void apply(LayoutView view));

  /// Return the child views in the order that they should be drawn.
  List<LayoutView> get paintOrderedViews;

  /// Return the child views in the order that they should be positioned within
  /// chart margins.
  List<LayoutView> get positionOrderedViews;
}
