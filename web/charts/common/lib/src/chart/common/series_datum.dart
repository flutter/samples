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

import 'processed_series.dart' show ImmutableSeries;

/// Stores datum and the series the datum originated.
class SeriesDatum<D> {
  final ImmutableSeries<D> series;
  final dynamic datum;
  int _index;

  SeriesDatum(this.series, this.datum) {
    _index = datum == null ? null : series.data.indexOf(datum);
  }

  int get index => _index;

  @override
  bool operator ==(Object other) =>
      other is SeriesDatum && other.series == series && other.datum == datum;

  @override
  int get hashCode => series.hashCode * 31 + datum.hashCode;
}

/// Represents a series datum based on series id and datum index.
class SeriesDatumConfig<D> {
  final String seriesId;
  final D domainValue;

  SeriesDatumConfig(this.seriesId, this.domainValue);

  @override
  bool operator ==(Object other) {
    return other is SeriesDatumConfig &&
        seriesId == other.seriesId &&
        domainValue == other.domainValue;
  }

  @override
  int get hashCode {
    int hashcode = seriesId.hashCode;
    hashcode = hashcode * 37 + domainValue.hashCode;
    return hashcode;
  }
}
