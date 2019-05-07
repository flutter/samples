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

import 'package:meta/meta.dart' show protected;
import 'package:intl/intl.dart';

import '../../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../../../layout/layout_view.dart'
    show
        LayoutPosition,
        LayoutView,
        LayoutViewConfig,
        LayoutViewPositionOrder,
        LayoutViewPaintOrder,
        ViewMeasuredSizes;
import '../../base_chart.dart' show BaseChart, LifecycleListener;
import '../../chart_canvas.dart' show ChartCanvas;
import '../../chart_context.dart' show ChartContext;
import '../../processed_series.dart' show MutableSeries;
import '../../selection_model/selection_model.dart'
    show SelectionModel, SelectionModelType;
import '../chart_behavior.dart'
    show
        BehaviorPosition,
        ChartBehavior,
        InsideJustification,
        OutsideJustification;
import 'legend_entry.dart';
import 'legend_entry_generator.dart';

/// Legend behavior for charts.
///
/// Since legends are desired to be customizable, building and displaying the
/// visual content of legends is done on the native platforms. This allows users
/// to specify customized content for legends using the native platform (ex. for
/// Flutter, using widgets).
abstract class Legend<D> implements ChartBehavior<D>, LayoutView {
  final SelectionModelType selectionModelType;
  final legendState = new LegendState<D>();
  final LegendEntryGenerator<D> legendEntryGenerator;

  String _title;

  BaseChart _chart;
  LifecycleListener<D> _lifecycleListener;

  Rectangle<int> _componentBounds;
  Rectangle<int> _drawAreaBounds;
  GraphicsFactory _graphicsFactory;

  BehaviorPosition _behaviorPosition = BehaviorPosition.end;
  OutsideJustification _outsideJustification =
      OutsideJustification.startDrawArea;
  InsideJustification _insideJustification = InsideJustification.topStart;
  LegendCellPadding _cellPadding;
  LegendCellPadding _legendPadding;

  TextStyleSpec _titleTextStyle;

  LegendTapHandling _legendTapHandling = LegendTapHandling.hide;

  List<MutableSeries<D>> _currentSeriesList;

  /// Save this in order to check if series list have changed and regenerate
  /// the legend entries.
  List<MutableSeries<D>> _postProcessSeriesList;

  static final _decimalPattern = new NumberFormat.decimalPattern();

  /// Default measure formatter for legends.
  @protected
  String defaultLegendMeasureFormatter(num value) {
    return (value == null) ? '' : _decimalPattern.format(value);
  }

  Legend({this.selectionModelType, this.legendEntryGenerator, entryTextStyle}) {
    _lifecycleListener = new LifecycleListener(
        onPostprocess: _postProcess, onPreprocess: _preProcess, onData: onData);
    legendEntryGenerator.entryTextStyle = entryTextStyle;
  }

  String get title => _title;

  /// Sets title text to display before legend entries.
  set title(String title) {
    _title = title;
  }

  BehaviorPosition get behaviorPosition => _behaviorPosition;

  set behaviorPosition(BehaviorPosition behaviorPosition) {
    _behaviorPosition = behaviorPosition;
  }

  OutsideJustification get outsideJustification => _outsideJustification;

  set outsideJustification(OutsideJustification outsideJustification) {
    _outsideJustification = outsideJustification;
  }

  InsideJustification get insideJustification => _insideJustification;

  set insideJustification(InsideJustification insideJustification) {
    _insideJustification = insideJustification;
  }

  LegendCellPadding get cellPadding => _cellPadding;

  set cellPadding(LegendCellPadding cellPadding) {
    _cellPadding = cellPadding;
  }

  LegendCellPadding get legendPadding => _legendPadding;

  set legendPadding(LegendCellPadding legendPadding) {
    _legendPadding = legendPadding;
  }

  LegendTapHandling get legendTapHandling => _legendTapHandling;

  /// Text style of the legend entry text.
  TextStyleSpec get entryTextStyle => legendEntryGenerator.entryTextStyle;

  set entryTextStyle(TextStyleSpec entryTextStyle) {
    legendEntryGenerator.entryTextStyle = entryTextStyle;
  }

  /// Text style of the legend title text.
  TextStyleSpec get titleTextStyle => _titleTextStyle;

  set titleTextStyle(TextStyleSpec titleTextStyle) {
    _titleTextStyle = titleTextStyle;
  }

  /// Configures the behavior of the legend when the user taps/clicks on an
  /// entry. Defaults to no behavior.
  ///
  /// Tapping on a legend entry will update the data visible on the chart. For
  /// example, when [LegendTapHandling.hide] is configured, the series or datum
  /// associated with that entry will be removed from the chart. Tapping on that
  /// entry a second time will make the data visible again.
  set legendTapHandling(LegendTapHandling legendTapHandling) {
    _legendTapHandling = legendTapHandling;
  }

  /// Resets any hidden series data when new data is drawn on the chart.
  @protected
  void onData(List<MutableSeries<D>> seriesList) {}

  /// Store off a copy of the series list for use when we render the legend.
  void _preProcess(List<MutableSeries<D>> seriesList) {
    _currentSeriesList = new List.from(seriesList);
    preProcessSeriesList(seriesList);
  }

  /// Overridable method that may be used by concrete [Legend] instances to
  /// manipulate the series list.
  @protected
  void preProcessSeriesList(List<MutableSeries<D>> seriesList) {}

  /// Build LegendEntries from list of series.
  void _postProcess(List<MutableSeries<D>> seriesList) {
    // Get the selection model directly from chart on post process.
    //
    // This is because if initial selection is set as a behavior, it will be
    // handled during onData. onData is prior to this behavior's postProcess
    // call, so the selection will have changed prior to the entries being
    // generated.
    final selectionModel = chart.getSelectionModel(selectionModelType);

    // Update entries if the selection model is different because post
    // process is called on each draw cycle, so this is called on each animation
    // frame and we don't want to update and request the native platform to
    // rebuild if nothing has changed.
    //
    // Also update legend entries if the series list has changed.
    if (legendState._selectionModel != selectionModel ||
        _postProcessSeriesList != seriesList) {
      legendState._legendEntries =
          legendEntryGenerator.getLegendEntries(_currentSeriesList);

      legendState._selectionModel = selectionModel;
      _postProcessSeriesList = seriesList;
      _updateLegendEntries();
    }
  }

  // need to handle when series data changes, selection should be reset

  /// Update the legend state with [selectionModel] and request legend update.
  void _selectionChanged(SelectionModel selectionModel) {
    legendState._selectionModel = selectionModel;
    _updateLegendEntries();
  }

  ChartContext get chartContext => _chart.context;

  /// Internally update legend entries, before calling [updateLegend] that
  /// notifies the native platform.
  void _updateLegendEntries() {
    legendEntryGenerator.updateLegendEntries(legendState._legendEntries,
        legendState._selectionModel, chart.currentSeriesList);

    updateLegend();
  }

  /// Requires override to show in native platform
  void updateLegend() {}

  @override
  void attachTo(BaseChart<D> chart) {
    _chart = chart;
    chart.addLifecycleListener(_lifecycleListener);
    chart
        .getSelectionModel(selectionModelType)
        .addSelectionChangedListener(_selectionChanged);

    chart.addView(this);
  }

  @override
  void removeFrom(BaseChart chart) {
    chart
        .getSelectionModel(selectionModelType)
        .removeSelectionChangedListener(_selectionChanged);
    chart.removeLifecycleListener(_lifecycleListener);

    chart.removeView(this);
  }

  @protected
  BaseChart get chart => _chart;

  @override
  String get role => 'legend-${selectionModelType.toString()}';

  bool get isRtl => _chart.context.isRtl;

  @override
  GraphicsFactory get graphicsFactory => _graphicsFactory;

  @override
  set graphicsFactory(GraphicsFactory value) {
    _graphicsFactory = value;
  }

  @override
  LayoutViewConfig get layoutConfig {
    return new LayoutViewConfig(
        position: _layoutPosition,
        positionOrder: LayoutViewPositionOrder.legend,
        paintOrder: LayoutViewPaintOrder.legend);
  }

  /// Get layout position from legend position.
  LayoutPosition get _layoutPosition {
    LayoutPosition position;
    switch (_behaviorPosition) {
      case BehaviorPosition.bottom:
        position = LayoutPosition.Bottom;
        break;
      case BehaviorPosition.end:
        position = isRtl ? LayoutPosition.Left : LayoutPosition.Right;
        break;
      case BehaviorPosition.inside:
        position = LayoutPosition.DrawArea;
        break;
      case BehaviorPosition.start:
        position = isRtl ? LayoutPosition.Right : LayoutPosition.Left;
        position = isRtl ? LayoutPosition.Right : LayoutPosition.Left;
        break;
      case BehaviorPosition.top:
        position = LayoutPosition.Top;
        break;
    }

    return position;
  }

  @override
  ViewMeasuredSizes measure(int maxWidth, int maxHeight) {
    // Native child classes should override this method to return real
    // measurements.
    return new ViewMeasuredSizes(preferredWidth: 0, preferredHeight: 0);
  }

  @override
  void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds) {
    _componentBounds = componentBounds;
    _drawAreaBounds = drawAreaBounds;

    updateLegend();
  }

  @override
  void paint(ChartCanvas canvas, double animationPercent) {}

  @override
  Rectangle<int> get componentBounds => _componentBounds;

  @override
  bool get isSeriesRenderer => false;

  // Gets the draw area bounds for native legend content to position itself
  // accordingly.
  Rectangle<int> get drawAreaBounds => _drawAreaBounds;
}

/// Stores legend data used by native legend content builder.
class LegendState<D> {
  List<LegendEntry<D>> _legendEntries;
  SelectionModel _selectionModel;

  List<LegendEntry<D>> get legendEntries => _legendEntries;
  SelectionModel get selectionModel => _selectionModel;
}

/// Stores legend cell padding, in percents or pixels.
///
/// If a percent is specified, it takes precedence over a flat pixel value.
class LegendCellPadding {
  final double bottomPct;
  final double bottomPx;
  final double leftPct;
  final double leftPx;
  final double rightPct;
  final double rightPx;
  final double topPct;
  final double topPx;

  /// Creates padding in percents from the left, top, right, and bottom.
  const LegendCellPadding.fromLTRBPct(
      this.leftPct, this.topPct, this.rightPct, this.bottomPct)
      : leftPx = null,
        topPx = null,
        rightPx = null,
        bottomPx = null;

  /// Creates padding in pixels from the left, top, right, and bottom.
  const LegendCellPadding.fromLTRBPx(
      this.leftPx, this.topPx, this.rightPx, this.bottomPx)
      : leftPct = null,
        topPct = null,
        rightPct = null,
        bottomPct = null;

  /// Creates padding in percents from the top, right, bottom, and left.
  const LegendCellPadding.fromTRBLPct(
      this.topPct, this.rightPct, this.bottomPct, this.leftPct)
      : topPx = null,
        rightPx = null,
        bottomPx = null,
        leftPx = null;

  /// Creates padding in pixels from the top, right, bottom, and left.
  const LegendCellPadding.fromTRBLPx(
      this.topPx, this.rightPx, this.bottomPx, this.leftPx)
      : topPct = null,
        rightPct = null,
        bottomPct = null,
        leftPct = null;

  /// Creates cell padding where all the offsets are `value` in percent.
  ///
  /// ## Sample code
  ///
  /// Typical eight percent margin on all sides:
  ///
  /// ```dart
  /// const LegendCellPadding.allPct(8.0)
  /// ```
  const LegendCellPadding.allPct(double value)
      : leftPct = value,
        topPct = value,
        rightPct = value,
        bottomPct = value,
        leftPx = null,
        topPx = null,
        rightPx = null,
        bottomPx = null;

  /// Creates cell padding where all the offsets are `value` in pixels.
  ///
  /// ## Sample code
  ///
  /// Typical eight-pixel margin on all sides:
  ///
  /// ```dart
  /// const LegendCellPadding.allPx(8.0)
  /// ```
  const LegendCellPadding.allPx(double value)
      : leftPx = value,
        topPx = value,
        rightPx = value,
        bottomPx = value,
        leftPct = null,
        topPct = null,
        rightPct = null,
        bottomPct = null;

  double bottom(num height) =>
      bottomPct != null ? bottomPct * height : bottomPx;

  double left(num width) => leftPct != null ? leftPct * width : leftPx;

  double right(num width) => rightPct != null ? rightPct * width : rightPx;

  double top(num height) => topPct != null ? topPct * height : topPx;
}

/// Options for behavior of tapping/clicking on entries in the legend.
enum LegendTapHandling {
  /// No associated behavior.
  none,

  /// Hide elements on the chart associated with this legend entry.
  hide,
}
