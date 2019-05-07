# 0.6.0
* Bars can now be rendered on line charts.
* Negative measure values will now be rendered on bar charts as a separate stack from the positive
values.
* Added a Datum Legend, which displays one entry per value in the first series on the chart. This is
 useful for pie and scatter plot charts.
* The AxisPosition enum in RTLSpec was refactored to AxisDirection to better reflect its effect on
swapping the positions of all start and end components, and not just positioning the measure axes.
* Added custom colors for line renderer area skirts and confidence intervals. A new "areaColorFn"
has been added to Series, and corresponding data to the datum. We could not use the fillColorFn for
these elements, because that color is already applied to the internal section of points on line
charts (including highlighter behaviors).

# 0.5.0
* SelectionModelConfig's listener parameter has been renamed to "changeListener". This is a breaking
change. Please rename any existing uses of the "listener" parameter to "changeListener". This was
named in order to add an additional listener "updateListener" that listens to any update requests,
regardless if the selection model has changed.
* CartesianChart's method getMeasureAxis(String axisId) has been changed to
getMeasureAxis({String axisId) so that getting the primary measure axis will not need passing any id
that does not match the secondary measure axis id. This affects users implementing custom behaviors
using the existing method.

# 0.4.0
* Fixed export file to export ChartsBehavior in the Flutter library instead of the one that resides
in charts_common. The charts_common behavior should not be used except internally in the
charts_flutter library. This is a breaking change if you are using charts_common behavior.
* Declare compatibility with Dart 2.
* BasicNumericTickFormatterSpec now takes in a callback instead of NumberFormat as the default
constructor. Use named constructor withNumberFormat instead. This is a breaking change.
* BarRendererConfig is no longer default of type String, please change current usage to
BarRendererConfig<String>. This is a breaking change.
* BarTargetLineRendererConfig is no longer default of type String, please change current usage to
BarTargetLineRendererConfig<String>. This is a breaking change.

# 0.3.0
* Simplified API by removing the requirement for specifying the datum type when creating a chart.
For example, previously to construct a bar chart the syntax was 'new BarChart<MyDatumType>()'.
The syntax is now cleaned up to be 'new BarChart()'. Please refer to the
[online gallery](https://google.github.io/charts/flutter/gallery.html) for the correct syntax.
* Added scatter plot charts
* Added tap to hide for legends
* Added support for rendering area skirts to line charts
* Added support for configurable fill colors to bar charts

# 0.2.0

* Update color palette. Please use MaterialPalette instead of QuantumPalette.
* Dart2 fixes

# 0.1.0

Initial release.
