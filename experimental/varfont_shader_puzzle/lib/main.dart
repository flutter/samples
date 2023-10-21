// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '../page_content/pages_flow.dart';

void main() {
  runApp(const TypePuzzle());
}

class TypePuzzle extends StatelessWidget {
  const TypePuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Type Jam',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        useMaterial3: true,
      ),
      home: const Scaffold(
        appBar: null,
        body: PagesFlow(),
      ),
    );
  }
}
