// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'bar_transition.dart';
import 'component_screen.dart';
import 'rail_transition.dart';

class NavigationTransition extends StatefulWidget {
  const NavigationTransition({
    super.key,
    required this.scaffoldKey,
    required this.animationController,
    required this.railAnimation,
    required this.navigationRail,
    required this.navigationBar,
    required this.appBar,
    required this.body,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  final AnimationController animationController;
  final CurvedAnimation railAnimation;
  final Widget navigationRail;
  final Widget navigationBar;
  final PreferredSizeWidget appBar;
  final Widget body;

  @override
  State<NavigationTransition> createState() => _NavigationTransitionState();
}

class _NavigationTransitionState extends State<NavigationTransition> {
  late final AnimationController controller;
  late final CurvedAnimation railAnimation;
  late final ReverseAnimation barAnimation;
  bool controllerInitialized = false;
  bool showDivider = false;

  @override
  void initState() {
    super.initState();

    controller = widget.animationController;
    railAnimation = widget.railAnimation;

    barAnimation = ReverseAnimation(
      CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      key: widget.scaffoldKey,
      appBar: widget.appBar,
      body: Row(
        children: <Widget>[
          RailTransition(
            animation: railAnimation,
            backgroundColor: colorScheme.surface,
            child: widget.navigationRail,
          ),
          widget.body,
        ],
      ),
      bottomNavigationBar: BarTransition(
        animation: barAnimation,
        backgroundColor: colorScheme.surface,
        child: widget.navigationBar,
      ),
      endDrawer: const NavigationDrawerSection(),
    );
  }
}
