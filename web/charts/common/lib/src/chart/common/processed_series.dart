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

import '../../common/color.dart' show Color;
import '../../data/series.dart'
    show AccessorFn, Series, SeriesAttributes, AttributeKey;
import '../cartesian/axis/axis.dart' show Axis;
import '../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../common/chart_canvas.dart' show FillPatternType;

class MutableSeries<D> extends ImmutableSeries<D> {
  final String id;
  String displayName;
  String seriesCategory;
  bool overlaySeries;
  int seriesIndex;

  /// Sum of the measure values for the series.
  num seriesMeasureTotal;

  List data;

  AccessorFn<String> keyFn;

  AccessorFn<D> domainFn;
  AccessorFn<D> domainLowerBoundFn;
  AccessorFn<D> domainUpperBoundFn;
  AccessorFn<num> measureFn;
  AccessorFn<num> measureLowerBoundFn;
  AccessorFn<num> measureUpperBoundFn;
  AccessorFn<num> measureOffsetFn;
  AccessorFn<num> rawMeasureFn;
  AccessorFn<num> rawMeasureLowerBoundFn;
  AccessorFn<num> rawMeasureUpperBoundFn;

  AccessorFn<Color> areaColorFn;
  AccessorFn<Color> colorFn;
  AccessorFn<List<int>> dashPatternFn;
  AccessorFn<Color> fillColorFn;
  AccessorFn<FillPatternType> fillPatternFn;
  AccessorFn<num> radiusPxFn;
  AccessorFn<num> strokeWidthPxFn;
  AccessorFn<String> labelAccessorFn;
  AccessorFn<TextStyleSpec> insideLabelStyleAccessorFn;
  AccessorFn<TextStyleSpec> outsideLabelStyleAccessorFn;

  final _attrs = new SeriesAttributes();

  Axis measureAxis;
  Axis domainAxis;

  MutableSeries(Series<dynamic, D> series) : this.id = series.id {
    displayName = series.displayName ?? series.id;
    seriesCategory = series.seriesCategory;
    overlaySeries = series.overlaySeries;

    data = series.data;
    keyFn = series.keyFn;

    domainFn = series.domainFn;
    domainLowerBoundFn = series.domainLowerBoundFn;
    domainUpperBoundFn = series.domainUpperBoundFn;

    measureFn = series.measureFn;
    measureLowerBoundFn = series.measureLowerBoundFn;
    measureUpperBoundFn = series.measureUpperBoundFn;
    measureOffsetFn = series.measureOffsetFn;

    // Save the original measure functions in case they get replaced later.
    rawMeasureFn = series.measureFn;
    rawMeasureLowerBoundFn = series.measureLowerBoundFn;
    rawMeasureUpperBoundFn = series.measureUpperBoundFn;

    // Pre-compute the sum of the measure values to make it available on demand.
    seriesMeasureTotal = 0;
    for (int i = 0; i < data.length; i++) {
      final measure = measureFn(i);
      if (measure != null) {
        seriesMeasureTotal += measure;
      }
    }

    areaColorFn = series.areaColorFn;
    colorFn = series.colorFn;
    dashPatternFn = series.dashPatternFn;
    fillColorFn = series.fillColorFn;
    fillPatternFn = series.fillPatternFn;
    labelAccessorFn = series.labelAccessorFn ?? (i) => domainFn(i).toString();
    insideLabelStyleAccessorFn = series.insideLabelStyleAccessorFn;
    outsideLabelStyleAccessorFn = series.outsideLabelStyleAccessorFn;

    radiusPxFn = series.radiusPxFn;
    strokeWidthPxFn = series.strokeWidthPxFn;

    _attrs.mergeFrom(series.attributes);
  }

  MutableSeries.clone(MutableSeries<D> other) : this.id = other.id {
    displayName = other.displayName;
    seriesCategory = other.seriesCategory;
    overlaySeries = other.overlaySeries;
    seriesIndex = other.seriesIndex;

    data = other.data;
    keyFn = other.keyFn;

    domainFn = other.domainFn;
    domainLowerBoundFn = other.domainLowerBoundFn;
    domainUpperBoundFn = other.domainUpperBoundFn;

    measureFn = other.measureFn;
    measureLowerBoundFn = other.measureLowerBoundFn;
    measureUpperBoundFn = other.measureUpperBoundFn;
    measureOffsetFn = other.measureOffsetFn;

    rawMeasureFn = other.rawMeasureFn;
    rawMeasureLowerBoundFn = other.rawMeasureLowerBoundFn;
    rawMeasureUpperBoundFn = other.rawMeasureUpperBoundFn;

    seriesMeasureTotal = other.seriesMeasureTotal;

    areaColorFn = other.areaColorFn;
    colorFn = other.colorFn;
    dashPatternFn = other.dashPatternFn;
    fillColorFn = other.fillColorFn;
    fillPatternFn = other.fillPatternFn;
    labelAccessorFn = other.labelAccessorFn;
    insideLabelStyleAccessorFn = other.insideLabelStyleAccessorFn;
    outsideLabelStyleAccessorFn = other.outsideLabelStyleAccessorFn;
    radiusPxFn = other.radiusPxFn;
    strokeWidthPxFn = other.strokeWidthPxFn;

    _attrs.mergeFrom(other._attrs);
    measureAxis = other.measureAxis;
    domainAxis = other.domainAxis;
  }

  void setAttr<R>(AttributeKey<R> key, R value) {
    this._attrs.setAttr(key, value);
  }

  R getAttr<R>(AttributeKey<R> key) {
    return this._attrs.getAttr(key);
  }

  bool operator ==(Object other) =>
      other is MutableSeries && data == other.data && id == other.id;

  @override
  int get hashCode => data.hashCode * 31 + id.hashCode;
}

abstract class ImmutableSeries<D> {
  String get id;

  String get displayName;

  String get seriesCategory;

  bool get overlaySeries;

  int get seriesIndex;

  /// Sum of the measure values for the series.
  num get seriesMeasureTotal;

  List get data;

  /// [keyFn] defines a globally unique identifier for each datum.
  ///
  /// The key for each datum is used during chart animation to smoothly
  /// transition data still in the series to its new state.
  ///
  /// Note: This is currently an optional function that is not fully used by all
  /// series renderers yet.
  AccessorFn<String> keyFn;

  AccessorFn<D> get domainFn;

  AccessorFn<D> get domainLowerBoundFn;

  AccessorFn<D> get domainUpperBoundFn;

  AccessorFn<num> get measureFn;

  AccessorFn<num> get measureLowerBoundFn;

  AccessorFn<num> get measureUpperBoundFn;

  AccessorFn<num> get measureOffsetFn;

  AccessorFn<num> get rawMeasureFn;

  AccessorFn<num> get rawMeasureLowerBoundFn;

  AccessorFn<num> get rawMeasureUpperBoundFn;

  AccessorFn<Color> get areaColorFn;

  AccessorFn<Color> get colorFn;

  AccessorFn<List<int>> get dashPatternFn;

  AccessorFn<Color> get fillColorFn;

  AccessorFn<FillPatternType> get fillPatternFn;

  AccessorFn<String> get labelAccessorFn;

  AccessorFn<TextStyleSpec> insideLabelStyleAccessorFn;
  AccessorFn<TextStyleSpec> outsideLabelStyleAccessorFn;

  AccessorFn<num> get radiusPxFn;

  AccessorFn<num> get strokeWidthPxFn;

  void setAttr<R>(AttributeKey<R> key, R value);

  R getAttr<R>(AttributeKey<R> key);
}
