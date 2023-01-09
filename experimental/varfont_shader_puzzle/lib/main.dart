// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';
import 'components/components.dart';

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
      ),
      home: const Scaffold(
        appBar: null,
        body: PagesFlow(),
      ),
    );
  }
}
