// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web_test/flutter_web_test.dart';

import 'package:flutter_web.examples.gallery/gallery/app.dart';

void main() {
  testWidgets('Gallery starts', (WidgetTester tester) async {
    await tester.pumpWidget(GalleryApp());
  });
}
