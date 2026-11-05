// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'src/basics/basics.dart';
import 'src/misc/misc.dart';

void main() {
  runApp(const AnimationSamples());
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
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
      routerConfig: router,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headerStyle = theme.textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation Samples',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Explore Animation',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 8,
          ),

          Text(
            'Discover interactive animation example in flutter',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),

          const SizedBox(
            height: 28,
          ),

          Text('Basics', style: headerStyle),
          const SizedBox(height: 12),
          ...basicDemos.map((demo) => DemoTile(demo: demo)),

          const SizedBox(height: 28),
          Text('Miscellaneous', style: headerStyle),
          const SizedBox(height: 12),
          ...miscDemos.map((demo) => DemoTile(demo: demo)),
          const SizedBox(height: 25),
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
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 6,
        ),
        leading: CircleAvatar(
          backgroundColor: theme.colorScheme.primaryContainer,
          child: Icon(
            Icons.animation,
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        title: Text(
          demo.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          context.go('/${demo.route}');
        },
      ),
    );
  }
}
