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

import 'dart:math' show min, max, Point;

import 'package:meta/meta.dart' show protected;

import 'pan_behavior.dart';
import 'panning_tick_provider.dart' show PanningTickProviderMode;

/// Adds domain axis panning and zooming support to the chart.
///
/// Zooming is supported for the web by mouse wheel events. Scrolling up zooms
/// the chart in, and scrolling down zooms the chart out. The chart can never be
/// zoomed out past the domain axis range.
///
/// Zooming is supported by pinch gestures for mobile devices.
///
/// Panning is supported by clicking and dragging the mouse for web, or tapping
/// and dragging on the chart for mobile devices.
class PanAndZoomBehavior<D> extends PanBehavior<D> {
  @override
  String get role => 'PanAndZoom';

  /// Flag which is enabled to indicate that the user is "zooming" the chart.
  bool _isZooming = false;

  @protected
  bool get isZooming => _isZooming;

  /// Current zoom scaling factor for the behavior.
  double _scalingFactor = 1.0;

  /// Minimum scalingFactor to prevent zooming out beyond the data range.
  final _minScalingFactor = 1.0;

  /// Maximum scalingFactor to prevent zooming in so far that no data is
  /// visible.
  ///
  /// TODO: Dynamic max based on data range?
  final _maxScalingFactor = 5.0;

  @override
  bool onDragStart(Point<double> localPosition) {
    if (chart == null) {
      return false;
    }

    super.onDragStart(localPosition);

    // Save the current scaling factor to make zoom events relative.
    _scalingFactor = chart.domainAxis?.viewportScalingFactor;
    _isZooming = true;

    return true;
  }

  @override
  bool onDragUpdate(Point<double> localPosition, double scale) {
    // Swipe gestures should be handled by the [PanBehavior].
    if (scale == 1.0) {
      _isZooming = false;
      return super.onDragUpdate(localPosition, scale);
    }

    // No further events in this chain should be handled by [PanBehavior].
    cancelPanning();

    if (!_isZooming || lastPosition == null || chart == null) {
      return false;
    }

    // Update the domain axis's viewport scale factor to zoom the chart.
    final domainAxis = chart.domainAxis;

    if (domainAxis == null) {
      return false;
    }

    // This is set during onDragUpdate and NOT onDragStart because we don't yet
    // know during onDragStart whether pan/zoom behavior is panning or zooming.
    // During zoom in / zoom out, domain tick provider set to return existing
    // cached ticks.
    domainAxisTickProvider.mode = PanningTickProviderMode.useCachedTicks;

    // Clamp the scale to prevent zooming out beyond the range of the data, or
    // zooming in so far that we show nothing useful.
    final newScalingFactor =
        min(max(_scalingFactor * scale, _minScalingFactor), _maxScalingFactor);

    domainAxis.setViewportSettings(
        newScalingFactor, domainAxis.viewportTranslatePx,
        drawAreaWidth: chart.drawAreaBounds.width);

    chart.redraw(skipAnimation: true, skipLayout: true);

    return true;
  }

  @override
  bool onDragEnd(
      Point<double> localPosition, double scale, double pixelsPerSec) {
    _isZooming = false;

    return super.onDragEnd(localPosition, scale, pixelsPerSec);
  }
}
