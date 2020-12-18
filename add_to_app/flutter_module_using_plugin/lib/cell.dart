// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// This is on alternate entrypoint for this module to display Flutter UI in
// a (multi-)view integration scenario.
void main() {
  runApp(Cell());
}

class Cell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CellState();
}

class _CellState extends State<Cell> {
  int cellNumber = 0;
  Random randomColor;

  @override
  void initState() {
    final channel = MethodChannel('dev.flutter.example/cell');
    channel.setMethodCallHandler((MethodCall call) async {
      if (call.method == 'setCellNumber') {
        setState(() {
          cellNumber = call.arguments as int;
          randomColor = Random(cellNumber);
        });
      }
    });
    super.initState();
  }

  Color randomLightColor() {
    if (randomColor == null) {
      randomColor = Random(cellNumber);
    }
    return Color.fromARGB(255, randomColor.nextInt(50) + 205,
        randomColor.nextInt(50) + 205, randomColor.nextInt(50) + 205);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: randomLightColor(),
      child: Center(
        child: Column(
          children: [
            Text(
              cellNumber.toString(),
              style: TextStyle(fontSize: 21),
            ),
          ],
        ),
      ),
    );
  }
}