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

import 'numeric_extents.dart' show NumericExtents;
import 'scale.dart' show MutableScale;

/// Scale used to convert numeric domain input units to output range units.
///
/// The input represents a continuous numeric domain which maps to a given range
/// output.  This is used to map the domain's values to the available pixel
/// range of the chart.
abstract class NumericScale extends MutableScale<num> {
  /// Keeps the scale and translate sane if true (default).
  ///
  /// Setting this to false disables some pan/zoom protections that prevent you
  /// from going beyond the data extent.
  bool get keepViewportWithinData;
  set keepViewportWithinData(bool keep);

  /// Returns the extent of the actual data (not the viewport max).
  NumericExtents get dataExtent;

  /// Returns the minimum step size of the actual data.
  num get minimumDomainStep;

  /// Overrides the domain extent if set, null otherwise.
  ///
  /// Overrides the extent of the actual data to lie about the range of the
  /// data so that panning has a start and end point to go between beyond the
  /// received data.  This allows lazy loading of data into the gaps in the
  /// expanded lied about areas.
  NumericExtents get domainOverride;
  set domainOverride(NumericExtents extent);

  /// Returns the domain extent visible in the viewport of the drawArea.
  NumericExtents get viewportDomain;

  /// Sets the domain extent visible in the viewport of the drawArea.
  ///
  /// Invalidates the viewportScale & viewportTranslatePx.
  set viewportDomain(NumericExtents extent);

  /// Returns the viewportScaleFactor needed to present the given domainWindow.
  double computeViewportScaleFactor(double domainWindow);
}
