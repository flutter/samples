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

abstract class ChartState {
  void setAnimation(Duration transition);

  /// Request to the native platform to rebuild the chart.
  void requestRebuild();

  /// Informs the chart that the configuration has changed.
  ///
  /// This flag is set by checks that detect if a configuration has changed,
  /// such as behaviors, axis, and renderers.
  ///
  /// This flag is read on chart rebuild, if chart is marked as dirty, then the
  /// chart will call a base chart draw.
  void markChartDirty();

  /// Reset the chart dirty flag.
  void resetChartDirtyFlag();

  /// Gets if the chart is dirty.
  bool get chartIsDirty;
}
