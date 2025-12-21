// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gallery_home.dart';

void main() {
  runApp(const CupertinoGalleryApp());
}

class CupertinoGalleryApp extends StatefulWidget {
  const CupertinoGalleryApp({super.key});

  @override
  State<CupertinoGalleryApp> createState() => _CupertinoGalleryAppState();
}

class _CupertinoGalleryAppState extends State<CupertinoGalleryApp> {
  ThemeMode _themeMode = ThemeMode.system;
  double _textSize = 1.0;

  void _handleThemeChange(bool isDarkMode) {
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  void _handleTextSizeChange(double newTextSize) {
    setState(() {
      _textSize = newTextSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    final baseTheme = CupertinoThemeData(
      brightness:
          _themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light,
    );
    final textTheme = baseTheme.textTheme.copyWith(
      textStyle:
          baseTheme.textTheme.textStyle.copyWith(fontSize: 14 * _textSize),
      actionTextStyle: baseTheme.textTheme.actionTextStyle
          .copyWith(fontSize: 14 * _textSize),
      tabLabelTextStyle: baseTheme.textTheme.tabLabelTextStyle
          .copyWith(fontSize: 10 * _textSize),
      navTitleTextStyle: baseTheme.textTheme.navTitleTextStyle
          .copyWith(fontSize: 17 * _textSize),
      navLargeTitleTextStyle: baseTheme.textTheme.navLargeTitleTextStyle
          .copyWith(fontSize: 34 * _textSize),
      navActionTextStyle: baseTheme.textTheme.navActionTextStyle
          .copyWith(fontSize: 17 * _textSize),
      pickerTextStyle: baseTheme.textTheme.pickerTextStyle
          .copyWith(fontSize: 21 * _textSize),
      dateTimePickerTextStyle: baseTheme.textTheme.dateTimePickerTextStyle
          .copyWith(fontSize: 21 * _textSize),
    );
    return CupertinoApp(
      title: 'Cupertino Gallery',
      theme: baseTheme.copyWith(textTheme: textTheme),
      home: GalleryHome(
        onThemeChange: _handleThemeChange,
        isDarkMode: _themeMode == ThemeMode.dark,
        onTextSizeChange: _handleTextSizeChange,
        textSize: _textSize,
      ),
    );
  }
}
