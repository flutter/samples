// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gallery_home.dart';

void main() {
  runApp(const CupertinoGalleryApp());
}

class CupertinoGalleryApp extends StatelessWidget {
  const CupertinoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Cupertino Gallery',
      home: GalleryHome(),
    );
  }
}