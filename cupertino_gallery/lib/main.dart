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

  void _handleThemeChange(bool isDarkMode) {
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino Gallery',
      theme: CupertinoThemeData(
        brightness: _themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light,
      ),
      home: GalleryHome(
        onThemeChange: _handleThemeChange,
        isDarkMode: _themeMode == ThemeMode.dark,
      ),
    );
  }
}
