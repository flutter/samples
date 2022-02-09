// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:convert';

import 'data.dart';
import 'util.dart' as util;

String _escapeAttribute(String s) =>
    const HtmlEscape(HtmlEscapeMode.attribute).convert(s);
String _escapeElement(String s) =>
    const HtmlEscape(HtmlEscapeMode.element).convert(s);

String description(Sample sample) => '''
<!DOCTYPE html>
<html lang="en">
$_descriptionHeader
${_descriptionPage(sample)}
$_footer
</html>
''';

String index(List<Sample> samples) => '''
<!DOCTYPE html>
<html lang="en">
$_indexHeader
${_indexBody(samples)}
$_footer
</html>
  ''';

String _indexHeader = '''
<head>
  <meta charset="utf-8">
  <title>Flutter samples</title>
  <link href="styles.css" rel="stylesheet" media="screen">
  <link href="https://fonts.googleapis.com/css?family=Google+Sans|Google+Sans+Display|Roboto:300,400,500&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="packages/mdc_web/material-components-web.min.js"></script>
  <script defer src="main.dart.js"></script>
  ${_googleAnalytics()}
</head>
''';

String _descriptionHeader = '''
<head>
  <meta charset="utf-8">
  <title>Flutter samples</title>
  <link href="styles.css" rel="stylesheet" media="screen">
  <link href="https://fonts.googleapis.com/css?family=Google+Sans|Google+Sans+Display|Roboto:300,400,500&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="packages/mdc_web/material-components-web.min.js"></script>
  <script src="https://kit.fontawesome.com/16cc04762e.js"></script>
  <script defer src="description.dart.js"></script>
  ${_googleAnalytics()}
</head>
''';

String _navbar = '''
<div class="navbar">
  <a class="leading" href="./">
    <img src="images/logos/logo_lockup_flutter_horizontal_wht_96.png" />
    <span class="title">Samples</span>
  </a>
  <div class="nav-items">
    <a href="https://flutter.dev/">Flutter Home</a>
    <a href="https://api.flutter.dev/">API Docs</a>
  </div>
</div>
''';

String _footer = '''
<div class="footer">
  <span>© Flutter ${DateTime.now().toUtc().year}</span>
</div>
''';

String _indexBody(List<Sample> samples) => '''
<body>
  <div class="content">
    ${util.indent(_navbar, 4)}
    <div class="container">
      <div class="index-header">
        <h1>All Samples</h1>
        <p>A curated list of Flutter samples and apps</p>
      </div>
      <div class="search-container">
        <div id="search-bar" class="mdc-text-field mdc-text-field--with-leading-icon mdc-text-field--with-trailing-icon">
          <i class="material-icons mdc-text-field__icon">search</i>
          <i id="clear-button" class="material-icons mdc-text-field__icon" role="button" tabindex="0">clear</i>
          <input class="mdc-text-field__input" id="text-field-hero-input">
          <div class="mdc-line-ripple"></div>
          <label for="text-field-hero-input" class="mdc-floating-label">Search</label>
        </div>
      </div>
      <div class="filter-menu">
        <div class="filter-buttons">
          <div class="mdc-chip-set mdc-chip-set--choice" role="grid">
            <div class="mdc-chip mdc-chip--selected" role="row">
              <div class="mdc-chip__ripple"></div>
              <span role="gridcell">
                <span role="button" tabindex="0" class="mdc-chip__text">All</span>
              </span>
            </div>
            <div class="mdc-chip" role="row">
              <div class="mdc-chip__ripple"></div>
              <span role="gridcell">
                <span role="button" tabindex="-1" class="mdc-chip__text">Sample</span>
              </span>
            </div>
            <div class="mdc-chip" role="row">
              <div class="mdc-chip__ripple"></div>
              <span role="gridcell">
                <span role="button" tabindex="-1" class="mdc-chip__text">Cookbook</span>
              </span>
            </div>
            <div class="mdc-chip" role="row">
              <div class="mdc-chip__ripple"></div>
              <span role="gridcell">
                <span role="button" tabindex="-1" class="mdc-chip__text">Web Demos</span>
              </span>
            </div>
          </div>
        </div>
        <div class="filter-end"></div>
      </div>
      <div class="grid">
        ${util.indent(_indexCards(samples), 6)}
      </div>
    </div>
  </div>
</body>
''';

String _backgroundImage(String url) =>
    _escapeAttribute('background-image: url(\'$url\');');
String _indexCards(List<Sample> samples) => samples.map(_indexCard).join();
String _indexCard(Sample sample) => '''
<div class="mdc-card demo-card mdc-elevation--z0" search-attrs="${_escapeAttribute(sample.searchAttributes)}">
  <div class="mdc-card__primary-action demo-card__primary-action" tabindex="0" href="${sample.filename}.html">
    <div class="mdc-card__media mdc-card__media--16-9 demo-card__media" style="${_backgroundImage(sample.thumbnail)}"></div>
    <div class="demo-card__label type-label">${_escapeElement(sample.type)}</div>
    <div class="demo-card__primary">
      <h2 class="demo-card__title mdc-typography mdc-typography--headline6">${_escapeElement(sample.name)}</h2>
    </div>
    <div class="demo-card__secondary mdc-typography mdc-typography--body2">${sample.shortDescription}</div>
  </div>
</div>
''';

String _descriptionPage(Sample sample) => '''
<body>
  <div class="content">
    ${util.indent(_navbar, 4)}
    <div class="container">
      <div class="description-title-row">
        <h1>${sample.name}</h1>
        <div class="type-label type-label-bordered">${sample.type}</div>
      </div>
      <p>By ${sample.author}</p>
      <div class="toolbar">
        <div class="buttons">
          ${util.indent(_descriptionButtons(sample), 6)}
        </div>
        <div class="tags-container">
          <div class="tags-label">
            <i class="material-icons">local_offer</i>
            <span>Tags</span>
          </div>
          <div class="tags">
            ${util.indent(_tags(sample), 8)}
          </div>
        </div>
      </div>
      <div class="slider-container">
        <div class="slider-content">
          ${util.indent(_descriptionScreenshots(sample), 4)}
        </div>
      </div>
      <div class="description">
        ${util.indent(_descriptionText(sample), 4)}
      </div>
    </div>
  </div>
</body>
''';

String _descriptionButtons(Sample sample) {
  var buf = StringBuffer();
  if (sample.web?.isNotEmpty == true) {
    buf.write(
        '''<button class="mdc-button mdc-button--outlined" onclick="window.location.href = '${sample.web}';"><span class="mdc-button__ripple"></span> Launch App</button>''');
  }

  if (sample.type == 'app' ||
      sample.type == 'sample' ||
      sample.type == 'demo') {
    buf.write(
        '''<button class="mdc-button mdc-button--outlined" onclick="window.location.href = '${sample.source}';">
<div class="mdc-button__ripple"></div>
<i class="material-icons mdc-button__icon" aria-hidden="true">code</i>
<span class="mdc-button__label">Source Code</span>
</button>''');
  }

  if (sample.type == 'cookbook') {
    buf.write(
        '''<button class="mdc-button mdc-button--outlined" onclick="window.location.href = '${sample.source}';">  <span class="mdc-button__ripple"></span>View Recipe</button>''');
  }
  return buf.toString();
}

String _tags(Sample sample) {
  var buf = StringBuffer();
  for (var tag in sample.tags) {
    buf.write('<a href="./#?search=tag%3A$tag">$tag</a>\n');
  }
  return buf.toString();
}

String _descriptionScreenshots(Sample sample) {
  var buf = StringBuffer();
  for (var screenshot in sample.screenshots) {
    buf.write(
        '''<div class="slider-single"><img class="slider-single-image" src="${screenshot.url}" alt="${screenshot.alt}" /></div>\n''');
  }
  return buf.toString();
}

String _descriptionText(Sample sample) {
  return '<p>${sample.description}</p>';
}

String _googleAnalytics() {
  return """
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-67589403-8"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-67589403-8');
  </script>""";
}
