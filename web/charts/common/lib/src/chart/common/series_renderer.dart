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

import 'dart:math' show Point, Rectangle, max;

import 'package:meta/meta.dart';

import '../../common/color.dart' show Color;
import '../../common/graphics_factory.dart' show GraphicsFactory;
import '../../common/style/style_factory.dart' show StyleFactory;
import '../../common/symbol_renderer.dart' show SymbolRenderer;
import '../../data/series.dart' show AttributeKey;
import '../layout/layout_view.dart'
    show
        LayoutPosition,
        LayoutView,
        LayoutViewConfig,
        LayoutViewPositionOrder,
        ViewMeasuredSizes;
import 'base_chart.dart' show BaseChart;
import 'chart_canvas.dart' show ChartCanvas;
import 'datum_details.dart' show DatumDetails;
import 'processed_series.dart' show ImmutableSeries, MutableSeries;
import 'series_datum.dart' show SeriesDatum;

/// Unique identifier used to associate custom series renderers on a chart with
/// one or more series of data.
///
/// [rendererIdKey] can be added as an attribute to user-defined [Series]
/// objects.
const AttributeKey<String> rendererIdKey =
    const AttributeKey<String>('SeriesRenderer.rendererId');

const AttributeKey<SeriesRenderer> rendererKey =
    const AttributeKey<SeriesRenderer>('SeriesRenderer.renderer');

/// A series renderer draws one or more series of data onto a chart canvas.
abstract class SeriesRenderer<D> extends LayoutView {
  static const defaultRendererId = 'default';

  /// Symbol renderer for this renderer.
  ///
  /// The default is set natively by the platform. This is because in Flutter,
  /// the [SymbolRenderer] has to be a Flutter wrapped version to support
  /// building widget based symbols.
  SymbolRenderer get symbolRenderer;

  set symbolRenderer(SymbolRenderer symbolRenderer);

  /// Unique identifier for this renderer. Any [Series] on a chart with a
  /// matching  [rendererIdKey] will be drawn by this renderer.
  String get rendererId;

  set rendererId(String rendererId);

  /// Handles any setup of the renderer that needs to be deferred until it is
  /// attached to a chart.
  void onAttach(BaseChart<D> chart);

  /// Handles any clean-up of the renderer that needs to be performed when it is
  /// detached from a chart.
  void onDetach(BaseChart<D> chart);

  /// Performs basic configuration for the series, before it is pre-processed.
  ///
  /// Typically, a series renderer should assign color mapping functions to
  /// series that do not have them.
  void configureSeries(List<MutableSeries<D>> seriesList);

  /// Pre-calculates some details for the series that will be needed later
  /// during the drawing phase.
  void preprocessSeries(List<MutableSeries<D>> seriesList);

  /// Adds the domain values for the given series to the chart's domain axis.
  void configureDomainAxes(List<MutableSeries<D>> seriesList);

  /// Adds the measure values for the given series to the chart's measure axes.
  void configureMeasureAxes(List<MutableSeries<D>> seriesList);

  /// Generates rendering data needed to paint the data on the chart.
  ///
  /// This is called during the post layout phase of the chart draw cycle.
  void update(List<ImmutableSeries<D>> seriesList, bool isAnimating);

  /// Renders the series data on the canvas, using the data generated during the
  /// [update] call.
  void paint(ChartCanvas canvas, double animationPercent);

  /// Gets a list the data from each series that is closest to a given point.
  ///
  /// [chartPoint] represents a point in the chart, such as a point that was
  /// clicked/tapped on by a user.
  ///
  /// [byDomain] specifies whether the nearest data should be defined by domain
  /// distance, or relative Cartesian distance.
  ///
  /// [boundsOverride] optionally specifies a bounding box for the selection
  /// event. If specified, then no data should be returned if [chartPoint] lies
  /// outside the box. If not specified, then each series renderer on the chart
  /// will use its own component bounds for filtering out selection events
  /// (usually the chart draw area).
  List<DatumDetails<D>> getNearestDatumDetailPerSeries(
      Point<double> chartPoint, bool byDomain, Rectangle<int> boundsOverride);

  /// Get an expanded set of processed [DatumDetails] for a given [SeriesDatum].
  ///
  /// This is typically called by chart behaviors that need to get full details
  /// on selected data.
  DatumDetails<D> getDetailsForSeriesDatum(SeriesDatum<D> seriesDatum);

  /// Adds chart position data to [details].
  ///
  /// This is a helper function intended to be called from
  /// [getDetailsForSeriesDatum]. Every concrete [SeriesRenderer] needs to
  /// implement custom logic for setting location data.
  DatumDetails<D> addPositionToDetailsForSeriesDatum(
      DatumDetails<D> details, SeriesDatum<D> seriesDatum);
}

/// Concrete base class for [SeriesRenderer]s that implements common
/// functionality.
abstract class BaseSeriesRenderer<D> implements SeriesRenderer<D> {
  final LayoutViewConfig layoutConfig;

  String rendererId;

  SymbolRenderer symbolRenderer;

  Rectangle<int> _drawAreaBounds;

  Rectangle<int> get drawBounds => _drawAreaBounds;

  GraphicsFactory _graphicsFactory;

  BaseSeriesRenderer({
    @required this.rendererId,
    @required int layoutPaintOrder,
    this.symbolRenderer,
  }) : this.layoutConfig = new LayoutViewConfig(
            paintOrder: layoutPaintOrder,
            position: LayoutPosition.DrawArea,
            positionOrder: LayoutViewPositionOrder.drawArea);

  @override
  GraphicsFactory get graphicsFactory => _graphicsFactory;

  @override
  set graphicsFactory(GraphicsFactory value) {
    _graphicsFactory = value;
  }

  @override
  void onAttach(BaseChart<D> chart) {}

  @override
  void onDetach(BaseChart<D> chart) {}

  /// Assigns colors to series that are missing their colorFn.
  ///
  /// [emptyCategoryUsesSinglePalette] Flag indicating whether having all
  ///     series with no categories will use the same or separate palettes.
  ///     Setting it to true uses various Blues for each series.
  ///     Setting it to false used different palettes (ie: s1 uses Blue500,
  ///     s2 uses Red500),
  @protected
  assignMissingColors(Iterable<MutableSeries<D>> seriesList,
      {@required bool emptyCategoryUsesSinglePalette}) {
    const defaultCategory = '__default__';

    // Count up the number of missing series per category, keeping a max across
    // categories.
    final missingColorCountPerCategory = <String, int>{};
    int maxMissing = 0;
    bool hasSpecifiedCategory = false;

    seriesList.forEach((MutableSeries<D> series) {
      if (series.colorFn == null) {
        // If there is no category, give it a default category to match logic.
        String category = series.seriesCategory;
        if (category == null) {
          category = defaultCategory;
        } else {
          hasSpecifiedCategory = true;
        }

        // Increment the missing counts for the category.
        final missingCnt = (missingColorCountPerCategory[category] ?? 0) + 1;
        missingColorCountPerCategory[category] = missingCnt;
        maxMissing = max(maxMissing, missingCnt);
      }
    });

    if (maxMissing > 0) {
      // Special handling of only series with empty categories when we want
      // to use different palettes.
      if (!emptyCategoryUsesSinglePalette && !hasSpecifiedCategory) {
        final palettes = StyleFactory.style.getOrderedPalettes(maxMissing);
        int index = 0;
        seriesList.forEach((MutableSeries series) {
          if (series.colorFn == null) {
            final color = palettes[index % palettes.length].shadeDefault;
            index++;
            series.colorFn = (_) => color;
          }
        });
        return;
      }

      // Get a list of palettes to use given the number of categories we've
      // seen. One palette per category (but might need to repeat).
      final colorPalettes = StyleFactory.style
          .getOrderedPalettes(missingColorCountPerCategory.length);

      // Create a map of Color palettes for each category. Each Palette uses
      // the max for any category to ensure that the gradients look appropriate.
      final colorsByCategory = <String, List<Color>>{};
      int index = 0;
      missingColorCountPerCategory.keys.forEach((String category) {
        colorsByCategory[category] =
            colorPalettes[index % colorPalettes.length].makeShades(maxMissing);
        index++;

        // Reset the count so we can use it to count as we set the colorFn.
        missingColorCountPerCategory[category] = 0;
      });

      seriesList.forEach((MutableSeries series) {
        if (series.colorFn == null) {
          final category = series.seriesCategory ?? defaultCategory;

          // Get the current index into the color list.
          final colorIndex = missingColorCountPerCategory[category];
          missingColorCountPerCategory[category] = colorIndex + 1;

          final color = colorsByCategory[category][colorIndex];
          series.colorFn = (_) => color;
        }

        // Fill color defaults to the series color if no accessor is provided.
        series.fillColorFn ??= (int index) => series.colorFn(index);
      });
    } else {
      seriesList.forEach((MutableSeries series) {
        // Fill color defaults to the series color if no accessor is provided.
        series.fillColorFn ??= (int index) => series.colorFn(index);
      });
    }
  }

  @override
  ViewMeasuredSizes measure(int maxWidth, int maxHeight) {
    return null;
  }

  @override
  void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds) {
    this._drawAreaBounds = drawAreaBounds;
  }

  @override
  Rectangle<int> get componentBounds => this._drawAreaBounds;

  @override
  bool get isSeriesRenderer => true;

  @override
  void configureSeries(List<MutableSeries<D>> seriesList) {}

  @override
  void preprocessSeries(List<MutableSeries<D>> seriesList) {}

  @override
  void configureDomainAxes(List<MutableSeries<D>> seriesList) {}

  @override
  void configureMeasureAxes(List<MutableSeries<D>> seriesList) {}

  @override
  DatumDetails<D> getDetailsForSeriesDatum(SeriesDatum<D> seriesDatum) {
    // Generate details relevant to every type of series renderer. Position
    // details are left as an exercise for every renderer that extends this
    // class.
    final series = seriesDatum.series;
    final index = seriesDatum.index;
    final domainFn = series.domainFn;
    final domainLowerBoundFn = series.domainLowerBoundFn;
    final domainUpperBoundFn = series.domainUpperBoundFn;
    final measureFn = series.measureFn;
    final measureLowerBoundFn = series.measureLowerBoundFn;
    final measureUpperBoundFn = series.measureUpperBoundFn;
    final measureOffsetFn = series.measureOffsetFn;
    final rawMeasureFn = series.rawMeasureFn;
    final rawMeasureLowerBoundFn = series.rawMeasureLowerBoundFn;
    final rawMeasureUpperBoundFn = series.rawMeasureUpperBoundFn;
    final colorFn = series.colorFn;
    final areaColorFn = series.areaColorFn ?? colorFn;
    final fillColorFn = series.fillColorFn ?? colorFn;
    final radiusPxFn = series.radiusPxFn;
    final strokeWidthPxFn = series.strokeWidthPxFn;

    final domainValue = domainFn(index);
    final domainLowerBoundValue =
        domainLowerBoundFn != null ? domainLowerBoundFn(index) : null;
    final domainUpperBoundValue =
        domainUpperBoundFn != null ? domainUpperBoundFn(index) : null;

    final measureValue = measureFn(index);
    final measureLowerBoundValue =
        measureLowerBoundFn != null ? measureLowerBoundFn(index) : null;
    final measureUpperBoundValue =
        measureUpperBoundFn != null ? measureUpperBoundFn(index) : null;
    final measureOffsetValue =
        measureOffsetFn != null ? measureOffsetFn(index) : null;

    final rawMeasureValue = rawMeasureFn(index);
    final rawMeasureLowerBoundValue =
        rawMeasureLowerBoundFn != null ? rawMeasureLowerBoundFn(index) : null;
    final rawMeasureUpperBoundValue =
        rawMeasureUpperBoundFn != null ? rawMeasureUpperBoundFn(index) : null;

    final color = colorFn(index);

    // Fill color is an optional override for color. Make sure we get a value if
    // the series doesn't define anything specific.
    var fillColor = fillColorFn(index);
    fillColor ??= color;

    // Area color is entirely optional.
    final areaColor = areaColorFn(index);

    var radiusPx = radiusPxFn != null ? radiusPxFn(index) : null;
    radiusPx = radiusPx?.toDouble();

    var strokeWidthPx = strokeWidthPxFn != null ? strokeWidthPxFn(index) : null;
    strokeWidthPx = strokeWidthPx?.toDouble();

    final details = new DatumDetails<D>(
        datum: seriesDatum.datum,
        index: seriesDatum.index,
        domain: domainValue,
        domainLowerBound: domainLowerBoundValue,
        domainUpperBound: domainUpperBoundValue,
        measure: measureValue,
        measureLowerBound: measureLowerBoundValue,
        measureUpperBound: measureUpperBoundValue,
        measureOffset: measureOffsetValue,
        rawMeasure: rawMeasureValue,
        rawMeasureLowerBound: rawMeasureLowerBoundValue,
        rawMeasureUpperBound: rawMeasureUpperBoundValue,
        series: series,
        color: color,
        fillColor: fillColor,
        areaColor: areaColor,
        radiusPx: radiusPx,
        strokeWidthPx: strokeWidthPx);

    // chartPosition depends on the shape of the rendered elements, and must be
    // added by concrete [SeriesRenderer] classes.
    return addPositionToDetailsForSeriesDatum(details, seriesDatum);
  }

  /// Returns true of [chartPoint] is within the component bounds for this
  /// renderer.
  ///
  /// [chartPoint] a point to test.
  ///
  /// [bounds] optional override for component bounds. If this is passed, then
  /// we will check whether the point is within these bounds instead of the
  /// component bounds.
  bool isPointWithinBounds(Point<double> chartPoint, Rectangle<int> bounds) {
    // Was it even in the drawArea?
    if (bounds != null) {
      if (!bounds.containsPoint(chartPoint)) {
        return false;
      }
    } else if (componentBounds == null ||
        !componentBounds.containsPoint(chartPoint)) {
      return false;
    }

    return true;
  }
}
