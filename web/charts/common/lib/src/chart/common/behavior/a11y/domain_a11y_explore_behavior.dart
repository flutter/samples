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

import 'package:meta/meta.dart' show required;

import '../../../cartesian/axis/axis.dart' show ImmutableAxis, domainAxisKey;
import '../../../cartesian/cartesian_chart.dart' show CartesianChart;
import '../../base_chart.dart' show BaseChart, LifecycleListener;
import '../../processed_series.dart' show MutableSeries;
import '../../selection_model/selection_model.dart' show SelectionModelType;
import '../../series_datum.dart' show SeriesDatum;
import 'a11y_explore_behavior.dart'
    show A11yExploreBehavior, ExploreModeTrigger;
import 'a11y_node.dart' show A11yNode, OnFocus;

/// Returns a string for a11y vocalization from a list of series datum.
typedef String VocalizationCallback<D>(List<SeriesDatum<D>> seriesDatums);

/// A simple vocalization that returns the domain value to string.
String domainVocalization<D>(List<SeriesDatum<D>> seriesDatums) {
  final datumIndex = seriesDatums.first.index;
  final domainFn = seriesDatums.first.series.domainFn;
  final domain = domainFn(datumIndex);

  return domain.toString();
}

/// Behavior that generates semantic nodes for each domain.
class DomainA11yExploreBehavior<D> extends A11yExploreBehavior<D> {
  final VocalizationCallback _vocalizationCallback;
  LifecycleListener<D> _lifecycleListener;
  CartesianChart<D> _chart;
  List<MutableSeries<D>> _seriesList;

  DomainA11yExploreBehavior(
      {VocalizationCallback vocalizationCallback,
      ExploreModeTrigger exploreModeTrigger,
      double minimumWidth,
      String exploreModeEnabledAnnouncement,
      String exploreModeDisabledAnnouncement})
      : _vocalizationCallback = vocalizationCallback ?? domainVocalization,
        super(
            exploreModeTrigger: exploreModeTrigger,
            minimumWidth: minimumWidth,
            exploreModeEnabledAnnouncement: exploreModeEnabledAnnouncement,
            exploreModeDisabledAnnouncement: exploreModeDisabledAnnouncement) {
    _lifecycleListener =
        new LifecycleListener<D>(onPostprocess: _updateSeriesList);
  }

  @override
  List<A11yNode> createA11yNodes() {
    final nodes = <_DomainA11yNode>[];

    // Update the selection model when the a11y node has focus.
    final selectionModel = _chart.getSelectionModel(SelectionModelType.info);

    final domainSeriesDatum = <D, List<SeriesDatum<D>>>{};

    for (MutableSeries<D> series in _seriesList) {
      for (var index = 0; index < series.data.length; index++) {
        final datum = series.data[index];
        D domain = series.domainFn(index);

        domainSeriesDatum[domain] ??= <SeriesDatum<D>>[];
        domainSeriesDatum[domain].add(new SeriesDatum<D>(series, datum));
      }
    }

    domainSeriesDatum.forEach((D domain, List<SeriesDatum<D>> seriesDatums) {
      final a11yDescription = _vocalizationCallback(seriesDatums);

      final firstSeries = seriesDatums.first.series;
      final domainAxis = firstSeries.getAttr(domainAxisKey) as ImmutableAxis<D>;
      final location = domainAxis.getLocation(domain);

      /// If the step size is smaller than the minimum width, use minimum.
      final stepSize = (domainAxis.stepSize > minimumWidth)
          ? domainAxis.stepSize
          : minimumWidth;

      nodes.add(new _DomainA11yNode(a11yDescription,
          location: location,
          stepSize: stepSize,
          chartDrawBounds: _chart.drawAreaBounds,
          isRtl: _chart.context.isRtl,
          renderVertically: _chart.vertical,
          onFocus: () => selectionModel.updateSelection(seriesDatums, [])));
    });

    // The screen reader navigates the nodes based on the order it is returned.
    // So if the chart is RTL, then the nodes should be ordered with the right
    // most domain first.
    //
    // If the chart has multiple series and one series is missing the domain
    // and it was added later, we still want the domains to be in order.
    nodes.sort();

    return nodes;
  }

  void _updateSeriesList(List<MutableSeries<D>> seriesList) {
    _seriesList = seriesList;
  }

  @override
  void attachTo(BaseChart<D> chart) {
    // Domain selection behavior only works for cartesian charts.
    assert(chart is CartesianChart);
    _chart = chart as CartesianChart;

    chart.addLifecycleListener(_lifecycleListener);

    super.attachTo(chart);
  }

  @override
  void removeFrom(BaseChart chart) {
    chart.removeLifecycleListener(_lifecycleListener);
  }

  @override
  String get role => 'DomainA11yExplore-${exploreModeTrigger}';
}

/// A11yNode with domain specific information.
class _DomainA11yNode extends A11yNode implements Comparable<_DomainA11yNode> {
  // Save location, RTL, and is render vertically for sorting
  final double location;
  final bool isRtl;
  final bool renderVertically;

  factory _DomainA11yNode(String label,
      {@required double location,
      @required double stepSize,
      @required Rectangle<int> chartDrawBounds,
      @required bool isRtl,
      @required bool renderVertically,
      OnFocus onFocus}) {
    Rectangle<int> boundingBox;
    if (renderVertically) {
      var left = (location - stepSize / 2).round();
      var top = chartDrawBounds.top;
      var width = stepSize.round();
      var height = chartDrawBounds.height;
      boundingBox = new Rectangle(left, top, width, height);
    } else {
      var left = chartDrawBounds.left;
      var top = (location - stepSize / 2).round();
      var width = chartDrawBounds.width;
      var height = stepSize.round();
      boundingBox = new Rectangle(left, top, width, height);
    }

    return new _DomainA11yNode._internal(label, boundingBox,
        location: location,
        isRtl: isRtl,
        renderVertically: renderVertically,
        onFocus: onFocus);
  }

  _DomainA11yNode._internal(String label, Rectangle<int> boundingBox,
      {@required this.location,
      @required this.isRtl,
      @required this.renderVertically,
      OnFocus onFocus})
      : super(label, boundingBox, onFocus: onFocus);

  @override
  int compareTo(_DomainA11yNode other) {
    // Ordered by smaller location first, unless rendering vertically and RTL,
    // then flip to sort by larger location first.
    int result = location.compareTo(other.location);

    if (renderVertically && isRtl && result != 0) {
      result = -result;
    }

    return result;
  }
}
