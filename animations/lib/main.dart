// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'src/basics/01_animated_container.dart';
import 'src/basics/02_page_route_builder.dart';
import 'src/basics/03_animation_controller.dart';
import 'src/basics/04_tweens.dart';
import 'src/basics/05_animated_builder.dart';
import 'src/basics/06_custom_tween.dart';
import 'src/basics/07_tween_sequence.dart';
import 'src/basics/08_fade_transition.dart';
import 'src/misc/animated_list.dart';
import 'src/misc/animated_positioned.dart';
import 'src/misc/animated_switcher.dart';
import 'src/misc/card_swipe.dart';
import 'src/misc/carousel.dart';
import 'src/misc/curved_animation.dart';
import 'src/misc/expand_card.dart';
import 'src/misc/focus_image.dart';
import 'src/misc/hero_animation.dart';
import 'src/misc/physics_card_drag.dart';
import 'src/misc/repeating_animation.dart';

void main() {
  setupWindow();
  runApp(const AnimationSamples());
}

const double windowWidth = 480;
const double windowHeight = 854;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Animation Samples');
    setWindowMinSize(const Size(windowWidth, windowHeight));
    setWindowMaxSize(const Size(windowWidth, windowHeight));
    getCurrentScreen().then((screen) {
      setWindowFrame(Rect.fromCenter(
        center: screen!.frame.center,
        width: windowWidth,
        height: windowHeight,
      ));
    });
  }
}

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({
    required this.name,
    required this.route,
    required this.builder,
  });
}

final basicDemos = [
  Demo(
      name: 'AnimatedContainer',
      route: AnimatedContainerDemo.routeName,
      builder: (context) => const AnimatedContainerDemo()),
  Demo(
      name: 'PageRouteBuilder',
      route: PageRouteBuilderDemo.routeName,
      builder: (context) => const PageRouteBuilderDemo()),
  Demo(
      name: 'Animation Controller',
      route: AnimationControllerDemo.routeName,
      builder: (context) => const AnimationControllerDemo()),
  Demo(
      name: 'Tweens',
      route: TweenDemo.routeName,
      builder: (context) => const TweenDemo()),
  Demo(
      name: 'AnimatedBuilder',
      route: AnimatedBuilderDemo.routeName,
      builder: (context) => const AnimatedBuilderDemo()),
  Demo(
      name: 'Custom Tween',
      route: CustomTweenDemo.routeName,
      builder: (context) => const CustomTweenDemo()),
  Demo(
      name: 'Tween Sequences',
      route: TweenSequenceDemo.routeName,
      builder: (context) => const TweenSequenceDemo()),
  Demo(
      name: 'Fade Transition',
      route: FadeTransitionDemo.routeName,
      builder: (context) => const FadeTransitionDemo()),
];

final miscDemos = [
  Demo(
      name: 'Expandable Card',
      route: ExpandCardDemo.routeName,
      builder: (context) => const ExpandCardDemo()),
  Demo(
      name: 'Carousel',
      route: CarouselDemo.routeName,
      builder: (context) => CarouselDemo()),
  Demo(
      name: 'Focus Image',
      route: FocusImageDemo.routeName,
      builder: (context) => const FocusImageDemo()),
  Demo(
      name: 'Card Swipe',
      route: CardSwipeDemo.routeName,
      builder: (context) => const CardSwipeDemo()),
  Demo(
      name: 'Repeating Animation',
      route: RepeatingAnimationDemo.routeName,
      builder: (context) => const RepeatingAnimationDemo()),
  Demo(
      name: 'Spring Physics',
      route: PhysicsCardDragDemo.routeName,
      builder: (context) => const PhysicsCardDragDemo()),
  Demo(
      name: 'AnimatedList',
      route: AnimatedListDemo.routeName,
      builder: (context) => const AnimatedListDemo()),
  Demo(
      name: 'AnimatedPositioned',
      route: AnimatedPositionedDemo.routeName,
      builder: (context) => const AnimatedPositionedDemo()),
  Demo(
      name: 'AnimatedSwitcher',
      route: AnimatedSwitcherDemo.routeName,
      builder: (context) => const AnimatedSwitcherDemo()),
  Demo(
      name: 'Hero Animation',
      route: HeroAnimationDemo.routeName,
      builder: (context) => const HeroAnimationDemo()),
  Demo(
      name: 'Curved Animation',
      route: CurvedAnimationDemo.routeName,
      builder: (context) => const CurvedAnimationDemo()),
];

final basicDemoRoutes =
    Map.fromEntries(basicDemos.map((d) => MapEntry(d.route, d.builder)));

final miscDemoRoutes =
    Map.fromEntries(miscDemos.map((d) => MapEntry(d.route, d.builder)));

final allRoutes = <String, WidgetBuilder>{
  ...basicDemoRoutes,
  ...miscDemoRoutes,
};

class AnimationSamples extends StatelessWidget {
  const AnimationSamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Samples',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: allRoutes,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Samples'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Basics', style: headerStyle)),
          ...basicDemos.map((d) => DemoTile(demo: d)),
          ListTile(title: Text('Misc', style: headerStyle)),
          ...miscDemos.map((d) => DemoTile(demo: d)),
        ],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo demo;

  const DemoTile({required this.demo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        Navigator.pushNamed(context, demo.route);
      },
    );
  }
}
