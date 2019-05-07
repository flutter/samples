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

import 'dart:math' show Rectangle;
import 'package:meta/meta.dart';
import 'layout_view.dart';

class SizeList {
  final _sizes = <int>[];
  int _total = 0;

  operator [](i) => _sizes[i];

  int get total => _total;

  int get length => _sizes.length;

  void add(size) {
    _sizes.add(size);
    _total += size;
  }

  void adjust(int index, int amount) {
    _sizes[index] += amount;
    _total += amount;
  }
}

class _DesiredViewSizes {
  final preferredSizes = new SizeList();
  final minimumSizes = new SizeList();

  void add(int preferred, int minimum) {
    preferredSizes.add(preferred);
    minimumSizes.add(minimum);
  }

  void adjustedTo(maxSize) {
    if (maxSize < preferredSizes.total) {
      int delta = preferredSizes.total - maxSize;
      for (int i = preferredSizes.length - 1; i >= 0; i--) {
        int viewAvailablePx = preferredSizes[i] - minimumSizes[i];

        if (viewAvailablePx < delta) {
          // We need even more than this one view can give up, so assign the
          // minimum to the view and adjust totals.
          preferredSizes.adjust(i, -viewAvailablePx);
          delta -= viewAvailablePx;
        } else {
          // We can adjust this view to account for the delta.
          preferredSizes.adjust(i, -delta);
          return;
        }
      }
    }
  }
}

/// A strategy for calculating size of vertical margins (RIGHT & LEFT).
abstract class VerticalMarginStrategy {
  SizeList measure(Iterable<LayoutView> views,
      {@required int maxWidth,
      @required int height,
      @required int fullHeight}) {
    final measuredWidths = new _DesiredViewSizes();
    int remainingWidth = maxWidth;

    views.forEach((LayoutView view) {
      final params = view.layoutConfig;
      final viewMargin = params.viewMargin;

      final availableHeight =
          (params.isFullPosition ? fullHeight : height) - viewMargin.height;

      // Measure with all available space, minus the buffer.
      remainingWidth = remainingWidth - viewMargin.width;
      maxWidth -= viewMargin.width;

      var size = ViewMeasuredSizes.zero;
      // Don't ask component to measure if both measurements are 0.
      //
      // Measure still needs to be called even when one dimension has a size of
      // zero because if the component is an axis, the axis needs to still
      // recalculate ticks even if it is not to be shown.
      if (remainingWidth > 0 || availableHeight > 0) {
        size = view.measure(remainingWidth, availableHeight);
        remainingWidth -= size.preferredWidth;
      }

      measuredWidths.add(size.preferredWidth, size.minWidth);
    });

    measuredWidths.adjustedTo(maxWidth);
    return measuredWidths.preferredSizes;
  }

  void layout(List<LayoutView> views, SizeList measuredSizes,
      Rectangle<int> fullBounds, Rectangle<int> drawAreaBounds);
}

/// A strategy for calculating size and bounds of left margins.
class LeftMarginLayoutStrategy extends VerticalMarginStrategy {
  @override
  void layout(Iterable<LayoutView> views, SizeList measuredSizes,
      Rectangle<int> fullBounds, Rectangle<int> drawAreaBounds) {
    var prevBoundsRight = drawAreaBounds.left;

    int i = 0;
    views.forEach((LayoutView view) {
      final params = view.layoutConfig;

      final width = measuredSizes[i];
      final left = prevBoundsRight - params.viewMargin.rightPx - width;
      final height =
          (params.isFullPosition ? fullBounds.height : drawAreaBounds.height) -
              params.viewMargin.height;
      final top = params.viewMargin.topPx +
          (params.isFullPosition ? fullBounds.top : drawAreaBounds.top);

      // Update the remaining bounds.
      prevBoundsRight = left - params.viewMargin.leftPx;

      // Layout this component.
      view.layout(new Rectangle(left, top, width, height), drawAreaBounds);

      i++;
    });
  }
}

/// A strategy for calculating size and bounds of right margins.
class RightMarginLayoutStrategy extends VerticalMarginStrategy {
  @override
  void layout(Iterable<LayoutView> views, SizeList measuredSizes,
      Rectangle<int> fullBounds, Rectangle<int> drawAreaBounds) {
    var prevBoundsLeft = drawAreaBounds.right;

    int i = 0;
    views.forEach((LayoutView view) {
      final params = view.layoutConfig;

      final width = measuredSizes[i];
      final left = prevBoundsLeft + params.viewMargin.leftPx;
      final height =
          (params.isFullPosition ? fullBounds.height : drawAreaBounds.height) -
              params.viewMargin.height;
      final top = params.viewMargin.topPx +
          (params.isFullPosition ? fullBounds.top : drawAreaBounds.top);

      // Update the remaining bounds.
      prevBoundsLeft = left + width + params.viewMargin.rightPx;

      // Layout this component.
      view.layout(new Rectangle(left, top, width, height), drawAreaBounds);

      i++;
    });
  }
}

/// A strategy for calculating size of horizontal margins (TOP & BOTTOM).
abstract class HorizontalMarginStrategy {
  SizeList measure(Iterable<LayoutView> views,
      {@required int maxHeight, @required int width, @required int fullWidth}) {
    final measuredHeights = new _DesiredViewSizes();
    int remainingHeight = maxHeight;

    views.forEach((LayoutView view) {
      final params = view.layoutConfig;
      final viewMargin = params.viewMargin;

      final availableWidth =
          (params.isFullPosition ? fullWidth : width) - viewMargin.width;

      // Measure with all available space, minus the buffer.
      remainingHeight = remainingHeight - viewMargin.height;
      maxHeight -= viewMargin.height;

      var size = ViewMeasuredSizes.zero;
      // Don't ask component to measure if both measurements are 0.
      //
      // Measure still needs to be called even when one dimension has a size of
      // zero because if the component is an axis, the axis needs to still
      // recalculate ticks even if it is not to be shown.
      if (remainingHeight > 0 || availableWidth > 0) {
        size = view.measure(availableWidth, remainingHeight);
        remainingHeight -= size.preferredHeight;
      }

      measuredHeights.add(size.preferredHeight, size.minHeight);
    });

    measuredHeights.adjustedTo(maxHeight);
    return measuredHeights.preferredSizes;
  }

  void layout(Iterable<LayoutView> views, SizeList measuredSizes,
      Rectangle<int> fullBounds, Rectangle<int> drawAreaBounds);
}

/// A strategy for calculating size and bounds of top margins.
class TopMarginLayoutStrategy extends HorizontalMarginStrategy {
  @override
  void layout(Iterable<LayoutView> views, SizeList measuredSizes,
      Rectangle<int> fullBounds, Rectangle<int> drawAreaBounds) {
    var prevBoundsBottom = drawAreaBounds.top;

    int i = 0;
    views.forEach((LayoutView view) {
      final params = view.layoutConfig;

      final height = measuredSizes[i];
      final top = prevBoundsBottom - height - params.viewMargin.bottomPx;

      final width =
          (params.isFullPosition ? fullBounds.width : drawAreaBounds.width) -
              params.viewMargin.width;
      final left = params.viewMargin.leftPx +
          (params.isFullPosition ? fullBounds.left : drawAreaBounds.left);

      // Update the remaining bounds.
      prevBoundsBottom = top - params.viewMargin.topPx;

      // Layout this component.
      view.layout(new Rectangle(left, top, width, height), drawAreaBounds);

      i++;
    });
  }
}

/// A strategy for calculating size and bounds of bottom margins.
class BottomMarginLayoutStrategy extends HorizontalMarginStrategy {
  @override
  void layout(Iterable<LayoutView> views, SizeList measuredSizes,
      Rectangle<int> fullBounds, Rectangle<int> drawAreaBounds) {
    var prevBoundsTop = drawAreaBounds.bottom;

    int i = 0;
    views.forEach((LayoutView view) {
      final params = view.layoutConfig;

      final height = measuredSizes[i];
      final top = prevBoundsTop + params.viewMargin.topPx;

      final width =
          (params.isFullPosition ? fullBounds.width : drawAreaBounds.width) -
              params.viewMargin.width;
      final left = params.viewMargin.leftPx +
          (params.isFullPosition ? fullBounds.left : drawAreaBounds.left);

      // Update the remaining bounds.
      prevBoundsTop = top + height + params.viewMargin.bottomPx;

      // Layout this component.
      view.layout(new Rectangle(left, top, width, height), drawAreaBounds);

      i++;
    });
  }
}
