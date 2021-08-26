// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:collection/collection.dart';
import 'package:quiver/core.dart';

import 'parser.dart';

/// A route path that has been parsed by [TemplateRouteParser].
class ParsedRoute {
  /// The current path location without query parameters. (/book/123)
  final String path;

  /// The path template (/book/:id)
  final String pathTemplate;

  /// The path parameters ({id: 123})
  final Map<String, String> parameters;

  /// The query parameters ({search: abc})
  final Map<String, String> queryParameters;

  static const _mapEquality = MapEquality<String, String>();

  ParsedRoute(
      this.path, this.pathTemplate, this.parameters, this.queryParameters);

  @override
  bool operator ==(Object other) =>
      other is ParsedRoute &&
      other.pathTemplate == pathTemplate &&
      other.path == path &&
      _mapEquality.equals(parameters, other.parameters) &&
      _mapEquality.equals(queryParameters, other.queryParameters);

  @override
  int get hashCode => hash4(
        path,
        pathTemplate,
        _mapEquality.hash(parameters),
        _mapEquality.hash(queryParameters),
      );

  @override
  String toString() => '<ParsedRoute '
      'template: $pathTemplate '
      'path: $path '
      'parameters: $parameters '
      'query parameters: $queryParameters>';
}
