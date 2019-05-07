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

/// Defines the behavior of the chart if it is RTL.
class RTLSpec {
  /// Creates [RTLSpec]. If no parameters are specified, the defaults are used.
  const RTLSpec({
    this.axisDirection = AxisDirection.reversed,
  });

  /// Direction of the domain axis when the chart container is configured for
  /// RTL mode.
  final AxisDirection axisDirection;
}

/// Direction of the domain axis when the chart container is configured for
/// RTL mode.
///
/// [normal] Vertically rendered charts will have the primary measure axis on
/// the left and secondary measure axis on the right. Domain axis is on the left
/// and the domain output range starts from the left and grows to the right.
/// Horizontally rendered charts will have the primary measure axis on the
/// bottom and secondary measure axis on the right. Measure output range starts
/// from the left and grows to the right.
///
/// [reversed] Vertically rendered charts will have the primary measure axis on
/// the right and secondary measure axis on the left. Domain axis is on the
/// right and domain values grows from the right to the left. Horizontally
/// rendered charts will have the primary measure axis on the top and secondary
/// measure axis on the left. Measure output range is flipped and grows from the
/// right to the left.
enum AxisDirection {
  normal,
  reversed,
}
