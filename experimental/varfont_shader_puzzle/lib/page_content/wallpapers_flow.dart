// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

class WallpapersFlow extends StatefulWidget {
  const WallpapersFlow({super.key});

  @override
  State<WallpapersFlow> createState() => _WallpapersFlowState();
}

class _WallpapersFlowState extends State<WallpapersFlow> {
  int pageNum = 0;
  int numPages = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          onPageChanged: (value) {
            setState(() {
              pageNum = value;
            });
          },
          children: const [
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/wallpaper3.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/wallpaper1.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/wallpaper2.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(220, 0, 0, 0),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _buildScrollDots(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildScrollDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numPages; i++) {
      Color dotColor = i == pageNum
          ? const Color.fromARGB(255, 255, 255, 255)
          : const Color.fromARGB(255, 105, 105, 105);
      Widget d = Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: dotColor,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.white, width: 0.5),
        ),
      );
      dots.add(d);
    }
    return dots;
  }
}
