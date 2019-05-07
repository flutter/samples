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

import '../numeric_extents.dart' show NumericExtents;

/// Encapsulation of all the domain processing logic for the [LinearScale].
class LinearScaleDomainInfo {
  /// User (or axis) overridden extent in domain units.
  NumericExtents domainOverride;

  /// The minimum added domain value.
  num _dataDomainStart = double.infinity;
  num get dataDomainStart => _dataDomainStart;

  /// The maximum added domain value.
  num _dataDomainEnd = double.negativeInfinity;
  num get dataDomainEnd => _dataDomainEnd;

  /// Previous domain added so we can calculate minimumDetectedDomainStep.
  num _previouslyAddedDomain;

  /// The step size between data points in domain units.
  ///
  /// Measured as the minimum distance between consecutive added points.
  num _minimumDetectedDomainStep = double.infinity;
  num get minimumDetectedDomainStep => _minimumDetectedDomainStep;

  ///The diff of the nicedDomain extent.
  num get domainDiff => extent.width;

  LinearScaleDomainInfo();

  LinearScaleDomainInfo.copy(LinearScaleDomainInfo other) {
    if (other.domainOverride != null) {
      domainOverride = other.domainOverride;
    }
    _dataDomainStart = other._dataDomainStart;
    _dataDomainEnd = other._dataDomainEnd;
    _previouslyAddedDomain = other._previouslyAddedDomain;
    _minimumDetectedDomainStep = other._minimumDetectedDomainStep;
  }

  /// Resets everything back to initial state.
  void reset() {
    _previouslyAddedDomain = null;
    _dataDomainStart = double.infinity;
    _dataDomainEnd = double.negativeInfinity;
    _minimumDetectedDomainStep = double.infinity;
  }

  /// Updates the domain extent and detected step size given the [domainValue].
  void addDomainValue(num domainValue) {
    if (domainValue == null || !domainValue.isFinite) {
      return;
    }

    extendDomain(domainValue);

    if (_previouslyAddedDomain != null) {
      final domainStep = (domainValue - _previouslyAddedDomain).abs();
      if (domainStep != 0.0 && domainStep < minimumDetectedDomainStep) {
        _minimumDetectedDomainStep = domainStep;
      }
    }
    _previouslyAddedDomain = domainValue;
  }

  /// Extends the data domain extent without modifying step size detection.
  ///
  /// Returns whether the the domain interval was extended. If the domain value
  /// was already contained in the domain interval, the domain interval does not
  /// change.
  bool extendDomain(num domainValue) {
    if (domainValue == null || !domainValue.isFinite) {
      return false;
    }

    bool domainExtended = false;
    if (domainValue < _dataDomainStart) {
      _dataDomainStart = domainValue;
      domainExtended = true;
    }
    if (domainValue > _dataDomainEnd) {
      _dataDomainEnd = domainValue;
      domainExtended = true;
    }
    return domainExtended;
  }

  /// Returns the extent based on the current domain range and overrides.
  NumericExtents get extent {
    num tmpDomainStart;
    num tmpDomainEnd;
    if (domainOverride != null) {
      // override was set.
      tmpDomainStart = domainOverride.min;
      tmpDomainEnd = domainOverride.max;
    } else {
      // domainEnd is less than domainStart if no domain values have been set.
      tmpDomainStart = _dataDomainStart.isFinite ? _dataDomainStart : 0.0;
      tmpDomainEnd = _dataDomainEnd.isFinite ? _dataDomainEnd : 1.0;
    }

    return new NumericExtents(tmpDomainStart, tmpDomainEnd);
  }
}
