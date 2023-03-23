// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

abstract class Styles {
  static const TextStyle productListTitle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
  );
  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowItemPrice = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle productPageItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productPageItemPrice = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const Color productRowDivider = Color(0xFFD9D9D9);

  static const Color scaffoldBackground = Color(0xfff0f0f0);

  static const Color scaffoldAppBarBackground = Color(0xffffffff);

  static const Widget spacer = SizedBox(height: 10);

  static const Widget largeSpacer = SizedBox(height: 100);
}
