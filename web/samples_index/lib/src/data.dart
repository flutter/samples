// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

/// Defines the data types for this project.
library data;

import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:samples_index/src/util.dart' as util;

part 'data.g.dart';

/// The full list of samples
@JsonSerializable(
    // Use anyMap and checked for more useful YAML parsing errors. See
    // package:checked_yaml docs for details.
    anyMap: true,
    checked: true)
class Index {
  final List<Sample> samples;

  Index(this.samples);

  factory Index.fromJson(Map json) => _$IndexFromJson(json);

  Map<String, dynamic> toJson() => _$IndexToJson(this);
}

/// A sample to be displayed in the app.
@JsonSerializable(anyMap: true, checked: true)
class Sample {
  /// The name of the sample.
  final String name;

  /// The author of the sample. Typically "Flutter"
  final String? author;

  /// Screenshots of the sample or cookbook article. At least 1 screenshot is
  /// required.
  final List<Screenshot> screenshots;

  /// A link to the source code or cookbook article if type is 'cookbook'.
  final String source;

  /// A link to this sample running in the browser.
  final String? web;

  /// 3-5 sentences describing the sample.
  final String description;

  /// The difficulty level. Values are either 'beginner', 'intermediate', or
  /// 'advanced'.
  final String? difficulty;

  /// List of widgets or Flutter APIs used by the sample. e.g. "AnimatedBuilder"
  /// or "ChangeNotifier".
  final List<String> widgets;

  /// List of packages or Flutter libraries used by the sample. third-party
  /// packages.
  final List<String> packages;

  /// Arbitrary tags to associate with this sample.
  final List<String> tags;

  /// Supported platforms. Values are either 'ios', 'android', 'desktop', and
  /// 'web'
  final List<String> platforms;

  /// Links to display on the details page
  final List<Link> links;

  /// The type of the sample. Supported values are either 'sample' or
  /// 'cookbook'.
  final String type;

  /// The date this sample was created.
  final DateTime? date;

  /// The Flutter channel this sample runs on. Either 'stable', 'dev' or
  /// 'master'.
  final String? channel;

  Sample({
    required this.name,
    this.author = 'Flutter',
    required this.screenshots,
    required this.source,
    this.web,
    required this.description,
    this.difficulty = 'beginner',
    this.widgets = const [],
    this.packages = const [],
    this.tags = const [],
    this.platforms = const [],
    this.links = const [],
    required this.type,
    this.date,
    this.channel,
  });

  factory Sample.fromJson(Map json) => _$SampleFromJson(json);

  Map<String, dynamic> toJson() => _$SampleToJson(this);

  String get thumbnail {
    var screenshotUrl = screenshots.first.url;
    var prefix = path.dirname(screenshotUrl);
    var filename = path.basenameWithoutExtension(screenshotUrl);
    return path.join(prefix, filename + '_thumb.png');
  }

  String get searchAttributes {
    var buf = StringBuffer();
    buf.write(name.toLowerCase());
    buf.write(' ');

    for (var tag in tags) {
      buf.write('tag:${tag.toLowerCase()} ');

      // Allow tags to be searched without the tag: prefix
      buf.write('${tag.toLowerCase()} ');
    }

    for (var platform in platforms) {
      buf.write('platform:$platform ');

      // Allow platforms to be searched without the tag: prefix
      buf.write('$platform ');
    }

    for (var widget in widgets) {
      buf.write('widget:$widget ');
    }

    for (var package in packages) {
      buf.write('package:$package ');
    }

    buf.write('type:$type ');

    return buf.toString().trim();
  }

  String get filename {
    var nameWithoutChars = name.replaceAll(RegExp(r'[^A-Za-z0-9\-\_\ ]'), '');
    var nameWithUnderscores = nameWithoutChars.replaceAll(' ', '_');
    var snake = util.snakeCase(nameWithUnderscores);
    var s = snake.replaceAll('__', '_');
    return s;
  }

  String get shortDescription {
    if (description.length < 64) {
      return description;
    }
    return description.substring(0, 64) + '...';
  }
}

/// A screenshot of a sample
@JsonSerializable(anyMap: true, checked: true)
class Screenshot {
  final String url;
  final String alt;

  Screenshot(this.url, this.alt);

  factory Screenshot.fromJson(Map json) => _$ScreenshotFromJson(json);

  Map<String, dynamic> toJson() => _$ScreenshotToJson(this);
}

/// An external link displayed next to a sample
@JsonSerializable(anyMap: true, checked: true)
class Link {
  final String text;
  final String href;

  Link(this.text, this.href);

  factory Link.fromJson(Map json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
