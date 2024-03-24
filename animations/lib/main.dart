// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:window_size/window_size.dart';

import 'src/basics/basics.dart';
import 'src/misc/misc.dart';

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
    builder: (context) => const AnimatedContainerDemo(),
  ),
  Demo(
    name: 'PageRouteBuilder',
    route: PageRouteBuilderDemo.routeName,
    builder: (context) => const PageRouteBuilderDemo(),
  ),
  Demo(
    name: 'Animation Controller',
    route: AnimationControllerDemo.routeName,
    builder: (context) => const AnimationControllerDemo(),
  ),
  Demo(
    name: 'Tweens',
    route: TweenDemo.routeName,
    builder: (context) => const TweenDemo(),
  ),
  Demo(
    name: 'AnimatedBuilder',
    route: AnimatedBuilderDemo.routeName,
    builder: (context) => const AnimatedBuilderDemo(),
  ),
  Demo(
    name: 'Custom Tween',
    route: CustomTweenDemo.routeName,
    builder: (context) => const CustomTweenDemo(),
  ),
  Demo(
    name: 'Tween Sequences',
    route: TweenSequenceDemo.routeName,
    builder: (context) => const TweenSequenceDemo(),
  ),
  Demo(
    name: 'Fade Transition',
    route: FadeTransitionDemo.routeName,
    builder: (context) => const FadeTransitionDemo(),
  ),
];

final miscDemos = [
  Demo(
    name: 'Expandable Card',
    route: ExpandCardDemo.routeName,
    builder: (context) => const ExpandCardDemo(),
  ),
  Demo(
    name: 'Carousel',
    route: CarouselDemo.routeName,
    builder: (context) => CarouselDemo(),
  ),
  Demo(
    name: 'Focus Image',
    route: FocusImageDemo.routeName,
    builder: (context) => const FocusImageDemo(),
  ),
  Demo(
    name: 'Card Swipe',
    route: CardSwipeDemo.routeName,
    builder: (context) => const CardSwipeDemo(),
  ),
  Demo(
    name: 'Flutter Animate',
    route: FlutterAnimateDemo.routeName,
    builder: (context) => const FlutterAnimateDemo(),
  ),
  Demo(
    name: 'Repeating Animation',
    route: RepeatingAnimationDemo.routeName,
    builder: (context) => const RepeatingAnimationDemo(),
  ),
  Demo(
    name: 'Spring Physics',
    route: PhysicsCardDragDemo.routeName,
    builder: (context) => const PhysicsCardDragDemo(),
  ),
  Demo(
    name: 'AnimatedList',
    route: AnimatedListDemo.routeName,
    builder: (context) => const AnimatedListDemo(),
  ),
  Demo(
    name: 'AnimatedPositioned',
    route: AnimatedPositionedDemo.routeName,
    builder: (context) => const AnimatedPositionedDemo(),
  ),
  Demo(
    name: 'AnimatedSwitcher',
    route: AnimatedSwitcherDemo.routeName,
    builder: (context) => const AnimatedSwitcherDemo(),
  ),
  Demo(
    name: 'Hero Animation',
    route: HeroAnimationDemo.routeName,
    builder: (context) => const HeroAnimationDemo(),
  ),
  Demo(
    name: 'Curved Animation',
    route: CurvedAnimationDemo.routeName,
    builder: (context) => const CurvedAnimationDemo(),
  ),
];

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        for (final demo in basicDemos)
          GoRoute(
            path: demo.route,
            builder: (context, state) => demo.builder(context),
          ),
        for (final demo in miscDemos)
          GoRoute(
            path: demo.route,
            builder: (context, state) => demo.builder(context),
          ),
      ],
    ),
  ],
);

class AnimationSamples extends StatelessWidget {
  const AnimationSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Animation Samples',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
      ),
      routerConfig: router,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.titleLarge;
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

  const DemoTile({required this.demo, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        context.go('/${demo.route}');
      },
    );
  }
}
