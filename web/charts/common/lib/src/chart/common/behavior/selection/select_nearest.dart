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

import 'dart:math';

import '../../../../common/gesture_listener.dart' show GestureListener;
import '../../base_chart.dart' show BaseChart;
import '../../behavior/chart_behavior.dart' show ChartBehavior;
import '../../datum_details.dart' show DatumDetails;
import '../../processed_series.dart' show ImmutableSeries;
import '../../selection_model/selection_model.dart' show SelectionModelType;
import '../../series_datum.dart' show SeriesDatum;
import 'selection_trigger.dart' show SelectionTrigger;

/// Chart behavior that listens to the given eventTrigger and updates the
/// specified [SelectionModel]. This is used to pair input events to behaviors
/// that listen to selection changes.
///
/// Input event types:
///   hover (default) - Mouse over/near data.
///   tap - Mouse/Touch on/near data.
///   pressHold - Mouse/Touch and drag across the data instead of panning.
///   longPressHold - Mouse/Touch for a while in one place then drag across the
///       data.
///
/// SelectionModels that can be updated:
///   info - To view the details of the selected items (ie: hover for web).
///   action - To select an item as an input, drill, or other selection.
///
/// Other options available
///   [expandToDomain] - All data points that match the domain value of the
///       closest data point from each Series will be included in the selection.
///       The selection is limited to the hovered component area unless
///       [selectAcrossAllSeriesRendererComponents] is set to true. (Default:
///       true)
///   [selectAcrossAllSeriesRendererComponents] - Events in any component that
///       draw Series data will propagate to other components that draw Series
///       data to get a union of points that match across all series renderer
///       components. This is useful when components in the margins draw series
///       data and a selection is supposed to bridge the two adjacent
///       components. (Default: true)
///   [selectClosestSeries] - If true, the closest Series itself will be marked
///       as selected in addition to the datum. This is useful for features like
///       highlighting the closest Series. (Default: true)
///
/// You can add one SelectNearest for each model type that you are updating.
/// Any previous SelectNearest behavior for that selection model will be
/// removed.
class SelectNearest<D> implements ChartBehavior<D> {
  GestureListener _listener;

  /// Type of selection model that should be updated by input events.
  final SelectionModelType selectionModelType;

  /// Type of input event that should trigger selection.
  final SelectionTrigger eventTrigger;

  /// Whether or not all data points that match the domain value of the closest
  /// data point from each Series will be included in the selection.
  ///
  /// The selection is limited to the hovered component area unless
  /// [selectAcrossAllSeriesRendererComponents] is set to true.
  final bool expandToDomain;

  /// Whether or not events in any component that draw Series data will
  /// propagate to other components that draw Series data to get a union of
  /// points that match across all series renderer components.
  ///
  /// This is useful when components in the margins draw series data and a
  /// selection is supposed to bridge the two adjacent components.
  final bool selectAcrossAllSeriesRendererComponents;

  /// Whether or not the closest Series itself will be marked as selected in
  /// addition to the datum.
  final bool selectClosestSeries;

  /// The farthest away a domain value can be from the mouse position on the
  /// domain axis before we'll ignore the datum.
  ///
  /// This allows sparse data to not get selected until the mouse is some
  /// reasonable distance. Defaults to no maximum distance.
  final int maximumDomainDistancePx;

  BaseChart<D> _chart;

  bool _delaySelect = false;

  SelectNearest(
      {this.selectionModelType = SelectionModelType.info,
      this.expandToDomain = true,
      this.selectAcrossAllSeriesRendererComponents = true,
      this.selectClosestSeries = true,
      this.eventTrigger = SelectionTrigger.hover,
      this.maximumDomainDistancePx}) {
    // Setup the appropriate gesture listening.
    switch (this.eventTrigger) {
      case SelectionTrigger.tap:
        _listener =
            new GestureListener(onTapTest: _onTapTest, onTap: _onSelect);
        break;
      case SelectionTrigger.tapAndDrag:
        _listener = new GestureListener(
          onTapTest: _onTapTest,
          onTap: _onSelect,
          onDragStart: _onSelect,
          onDragUpdate: _onSelect,
        );
        break;
      case SelectionTrigger.pressHold:
        _listener = new GestureListener(
            onTapTest: _onTapTest,
            onLongPress: _onSelect,
            onDragStart: _onSelect,
            onDragUpdate: _onSelect,
            onDragEnd: _onDeselectAll);
        break;
      case SelectionTrigger.longPressHold:
        _listener = new GestureListener(
            onTapTest: _onTapTest,
            onLongPress: _onLongPressSelect,
            onDragStart: _onSelect,
            onDragUpdate: _onSelect,
            onDragEnd: _onDeselectAll);
        break;
      case SelectionTrigger.hover:
      default:
        _listener = new GestureListener(onHover: _onSelect);
        break;
    }
  }

  bool _onTapTest(Point<double> chartPoint) {
    // If the tap is within the drawArea, then claim the event from others.
    _delaySelect = eventTrigger == SelectionTrigger.longPressHold;
    return _chart.pointWithinRenderer(chartPoint);
  }

  bool _onLongPressSelect(Point<double> chartPoint) {
    _delaySelect = false;
    return _onSelect(chartPoint);
  }

  bool _onSelect(Point<double> chartPoint, [double ignored]) {
    // If the selection is delayed (waiting for long press), then quit early.
    if (_delaySelect) {
      return false;
    }

    var details = _chart.getNearestDatumDetailPerSeries(
        chartPoint, selectAcrossAllSeriesRendererComponents);

    final seriesList = <ImmutableSeries<D>>[];
    var seriesDatumList = <SeriesDatum<D>>[];

    if (details != null && details.isNotEmpty) {
      details.sort((a, b) => a.domainDistance.compareTo(b.domainDistance));

      if (maximumDomainDistancePx == null ||
          details[0].domainDistance <= maximumDomainDistancePx) {
        seriesDatumList = expandToDomain
            ? _expandToDomain(details.first)
            : [new SeriesDatum<D>(details.first.series, details.first.datum)];

        // Filter out points from overlay series.
        seriesDatumList
            .removeWhere((SeriesDatum<D> datum) => datum.series.overlaySeries);

        if (selectClosestSeries && seriesList.isEmpty) {
          if (details.first.series.overlaySeries) {
            // If the closest "details" was from an overlay series, grab the
            // closest remaining series instead. In this case, we need to sort a
            // copy of the list by domain distance because we do not want to
            // re-order the actual return values here.
            final sortedSeriesDatumList =
                new List<SeriesDatum<D>>.from(seriesDatumList);
            sortedSeriesDatumList.sort((a, b) =>
                a.datum.domainDistance.compareTo(b.datum.domainDistance));
            seriesList.add(sortedSeriesDatumList.first.series);
          } else {
            seriesList.add(details.first.series);
          }
        }
      }
    }

    return _chart
        .getSelectionModel(selectionModelType)
        .updateSelection(seriesDatumList, seriesList);
  }

  bool _onDeselectAll(_, __, ___) {
    // If the selection is delayed (waiting for long press), then quit early.
    if (_delaySelect) {
      return false;
    }

    _chart
        .getSelectionModel(selectionModelType)
        .updateSelection(<SeriesDatum<D>>[], <ImmutableSeries<D>>[]);
    return false;
  }

  List<SeriesDatum<D>> _expandToDomain(DatumDetails<D> nearestDetails) {
    // Make sure that the "nearest" datum is at the top of the list.
    final data = <SeriesDatum<D>>[
      new SeriesDatum(nearestDetails.series, nearestDetails.datum)
    ];
    final nearestDomain = nearestDetails.domain;

    for (ImmutableSeries<D> series in _chart.currentSeriesList) {
      final domainFn = series.domainFn;
      final domainLowerBoundFn = series.domainLowerBoundFn;
      final domainUpperBoundFn = series.domainUpperBoundFn;
      final testBounds =
          domainLowerBoundFn != null && domainUpperBoundFn != null;

      for (var i = 0; i < series.data.length; i++) {
        final datum = series.data[i];
        final domain = domainFn(i);

        // Don't re-add the nearest details.
        if (nearestDetails.series == series && nearestDetails.datum == datum) {
          continue;
        }

        if (domain == nearestDomain) {
          data.add(new SeriesDatum(series, datum));
        } else if (testBounds) {
          final domainLowerBound = domainLowerBoundFn(i);
          final domainUpperBound = domainUpperBoundFn(i);

          var addDatum = false;
          if (domainLowerBound != null && domainUpperBound != null) {
            if (domain is int) {
              addDatum = (domainLowerBound as int) <= (nearestDomain as int) &&
                  (nearestDomain as int) <= (domainUpperBound as int);
            } else if (domain is double) {
              addDatum =
                  (domainLowerBound as double) <= (nearestDomain as double) &&
                      (nearestDomain as double) <= (domainUpperBound as double);
            } else if (domain is DateTime) {
              addDatum = domainLowerBound == nearestDomain ||
                  domainUpperBound == nearestDomain ||
                  ((domainLowerBound as DateTime)
                          .isBefore(nearestDomain as DateTime) &&
                      (nearestDomain as DateTime)
                          .isBefore(domainUpperBound as DateTime));
            }
          }

          if (addDatum) {
            data.add(new SeriesDatum(series, datum));
          }
        }
      }
    }

    return data;
  }

  @override
  void attachTo(BaseChart<D> chart) {
    _chart = chart;
    chart.addGestureListener(_listener);

    // TODO: Update this dynamically based on tappable location.
    switch (this.eventTrigger) {
      case SelectionTrigger.tap:
      case SelectionTrigger.tapAndDrag:
      case SelectionTrigger.pressHold:
      case SelectionTrigger.longPressHold:
        chart.registerTappable(this);
        break;
      case SelectionTrigger.hover:
      default:
        chart.unregisterTappable(this);
        break;
    }
  }

  @override
  void removeFrom(BaseChart<D> chart) {
    chart.removeGestureListener(_listener);
    chart.unregisterTappable(this);
    _chart = null;
  }

  @override
  String get role => 'SelectNearest-${selectionModelType.toString()}}';
}
