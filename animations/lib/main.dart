// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'src/basics/01_animated_container.dart';
import 'src/basics/02_page_route_builder.dart';
import 'src/basics/03_animation_controller.dart';
import 'src/basics/04_tweens.dart';
import 'src/basics/05_animated_builder.dart';
import 'src/basics/06_custom_tween.dart';
import 'src/basics/07_tween_sequence.dart';
import 'src/misc/card_swipe.dart';
import 'src/misc/carousel.dart';
import 'src/misc/expand_card.dart';
import 'src/misc/focus_image.dart';
import 'src/misc/physics_card_drag.dart';
import 'src/misc/repeating_animation.dart';

void main() => runApp(AnimationSamples());

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({this.name, this.route, this.builder});
}

final basicDemos = [
  Demo(
      name: 'AnimatedContainer',
      route: AnimatedContainerDemo.routeName,
      builder: (context) => AnimatedContainerDemo()),
  Demo(
      name: 'PageRouteBuilder',
      route: PageRouteBuilderDemo.routeName,
      builder: (context) => PageRouteBuilderDemo()),
  Demo(
      name: 'Animation Controller',
      route: AnimationControllerDemo.routeName,
      builder: (context) => AnimationControllerDemo()),
  Demo(
      name: 'Tweens',
      route: TweenDemo.routeName,
      builder: (context) => TweenDemo()),
  Demo(
      name: 'AnimatedBuilder',
      route: AnimatedBuilderDemo.routeName,
      builder: (context) => AnimatedBuilderDemo()),
  Demo(
      name: 'Custom Tween',
      route: CustomTweenDemo.routeName,
      builder: (context) => CustomTweenDemo()),
  Demo(
      name: 'Tween Sequences',
      route: TweenSequenceDemo.routeName,
      builder: (context) => TweenSequenceDemo()),
];

final miscDemos = [
  Demo(
      name: 'Expandable Card',
      route: ExpandCardDemo.routeName,
      builder: (context) => ExpandCardDemo()),
  Demo(
      name: 'Carousel',
      route: CarouselDemo.routeName,
      builder: (context) => CarouselDemo()),
  Demo(
      name: 'Focus Image',
      route: FocusImageDemo.routeName,
      builder: (context) => FocusImageDemo()),
  Demo(
      name: 'Card Swipe',
      route: CardSwipeDemo.routeName,
      builder: (context) => CardSwipeDemo()),
  Demo(
      name: 'Repeating Animation',
      route: RepeatingAnimationDemo.routeName,
      builder: (context) => RepeatingAnimationDemo()),
  Demo(
      name: 'Spring Physics',
      route: PhysicsCardDragDemo.routeName,
      builder: (context) => PhysicsCardDragDemo()),
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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Samples',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: allRoutes,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Samples'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Basics', style: headerStyle)),
          ...basicDemos.map((d) => DemoTile(d)),
          ListTile(title: Text('Misc', style: headerStyle)),
          ...miscDemos.map((d) => DemoTile(d)),
        ],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo demo;

  DemoTile(this.demo);

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        Navigator.pushNamed(context, demo.route);
      },
    );
  }
}
