// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class HeroAnimationDemo extends StatelessWidget {
  const HeroAnimationDemo({super.key});
  static const String routeName = 'misc/hero_animation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'hero-page-child',
          child: _createHeroContainer(
            size: 50.0,
            color: Colors.grey.shade300,
          ),
        ),
        onTap: () => Navigator.of(context).push<void>(
            MaterialPageRoute(builder: (context) => const HeroPage())),
      ),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: 'hero-page-child',
          child: _createHeroContainer(
            size: 100.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

StatelessWidget _createHeroContainer({
  required double size,
  required Color color,
}) {
  return Container(
    height: size,
    width: size,
    padding: const EdgeInsets.all(10.0),
    margin: size < 100.0 ? const EdgeInsets.all(10.0) : const EdgeInsets.all(0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: const FlutterLogo(),
  );
}
