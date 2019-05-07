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

import 'ordinal_scale_domain_info.dart' show OrdinalScaleDomainInfo;
import 'scale.dart' show MutableScale;

abstract class OrdinalScale extends MutableScale<String> {
  /// The current domain collection with all added unique values.
  OrdinalScaleDomainInfo get domain;

  /// Sets the viewport of the scale based on the number of data points to show
  ///  and the starting domain value.
  ///
  /// [viewportDataSize] How many ordinal domain values to show in the viewport.
  /// [startingDomain] The starting domain value of the viewport. Note that if
  /// the starting domain is in terms of position less than [domainValuesToShow]
  /// from the last domain value the viewport will be fixed to the last value
  /// and not guaranteed that this domain value is the first in the viewport.
  void setViewport(int viewportDataSize, String startingDomain);

  /// The number of full ordinal steps that fit in the viewport.
  int get viewportDataSize;

  /// The first fully visible ordinal step within the viewport.
  ///
  /// Null if no domains exist.
  String get viewportStartingDomain;
}
