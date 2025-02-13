// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'buttons.dart';
import 'color_palettes_screen.dart';
import 'component_screen.dart';
import 'constants.dart';
import 'elevation_screen.dart';
import 'expanded_trailing_actions.dart';
import 'navigation_transition.dart';
import 'one_two_transition.dart';
import 'typography_screen.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.useLightMode,
    required this.useMaterial3,
    required this.colorSelected,
    required this.handleBrightnessChange,
    required this.handleMaterialVersionChange,
    required this.handleColorSelect,
    required this.handleImageSelect,
    required this.colorSelectionMethod,
    required this.imageSelected,
  });

  final bool useLightMode;
  final bool useMaterial3;
  final ColorSeed colorSelected;
  final ColorImageProvider imageSelected;
  final ColorSelectionMethod colorSelectionMethod;

  final void Function(bool useLightMode) handleBrightnessChange;
  final void Function() handleMaterialVersionChange;
  final void Function(int value) handleColorSelect;
  final void Function(int value) handleImageSelect;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late final AnimationController controller;
  late final CurvedAnimation railAnimation;
  bool controllerInitialized = false;
  bool showMediumSizeLayout = false;
  bool showLargeSizeLayout = false;

  int screenIndex = ScreenSelected.component.value;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: transitionLength.toInt() * 2),
      value: 0,
      vsync: this,
    );
    railAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.5, 1.0),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    final AnimationStatus status = controller.status;
    if (width > mediumWidthBreakpoint) {
      if (width > largeWidthBreakpoint) {
        showMediumSizeLayout = false;
        showLargeSizeLayout = true;
      } else {
        showMediumSizeLayout = true;
        showLargeSizeLayout = false;
      }
      if (status != AnimationStatus.forward &&
          status != AnimationStatus.completed) {
        controller.forward();
      }
    } else {
      showMediumSizeLayout = false;
      showLargeSizeLayout = false;
      if (status != AnimationStatus.reverse &&
          status != AnimationStatus.dismissed) {
        controller.reverse();
      }
    }
    if (!controllerInitialized) {
      controllerInitialized = true;
      controller.value = width > mediumWidthBreakpoint ? 1 : 0;
    }
  }

  void handleScreenChanged(int screenSelected) {
    setState(() {
      screenIndex = screenSelected;
    });
  }

  Widget createScreenFor(
    ScreenSelected screenSelected,
    bool showNavBarExample,
  ) => switch (screenSelected) {
    ScreenSelected.component => Expanded(
      child: OneTwoTransition(
        animation: railAnimation,
        one: FirstComponentList(
          showNavBottomBar: showNavBarExample,
          scaffoldKey: scaffoldKey,
          showSecondList: showMediumSizeLayout || showLargeSizeLayout,
        ),
        two: SecondComponentList(scaffoldKey: scaffoldKey),
      ),
    ),
    ScreenSelected.color => const ColorPalettesScreen(),
    ScreenSelected.typography => const TypographyScreen(),
    ScreenSelected.elevation => const ElevationScreen(),
  };

  PreferredSizeWidget _createAppBar() {
    return AppBar(
      title:
          widget.useMaterial3
              ? const Text('Material 3')
              : const Text('Material 2'),
      actions:
          !showMediumSizeLayout && !showLargeSizeLayout
              ? [
                BrightnessButton(
                  handleBrightnessChange: widget.handleBrightnessChange,
                ),
                Material3Button(
                  handleMaterialVersionChange:
                      widget.handleMaterialVersionChange,
                ),
                ColorSeedButton(
                  handleColorSelect: widget.handleColorSelect,
                  colorSelected: widget.colorSelected,
                  colorSelectionMethod: widget.colorSelectionMethod,
                ),
                ColorImageButton(
                  handleImageSelect: widget.handleImageSelect,
                  imageSelected: widget.imageSelected,
                  colorSelectionMethod: widget.colorSelectionMethod,
                ),
              ]
              : [Container()],
    );
  }

  Widget _trailingActions() => Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Flexible(
        child: BrightnessButton(
          handleBrightnessChange: widget.handleBrightnessChange,
          showTooltipBelow: false,
        ),
      ),
      Flexible(
        child: Material3Button(
          handleMaterialVersionChange: widget.handleMaterialVersionChange,
          showTooltipBelow: false,
        ),
      ),
      Flexible(
        child: ColorSeedButton(
          handleColorSelect: widget.handleColorSelect,
          colorSelected: widget.colorSelected,
          colorSelectionMethod: widget.colorSelectionMethod,
        ),
      ),
      Flexible(
        child: ColorImageButton(
          handleImageSelect: widget.handleImageSelect,
          imageSelected: widget.imageSelected,
          colorSelectionMethod: widget.colorSelectionMethod,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return NavigationTransition(
          scaffoldKey: scaffoldKey,
          animationController: controller,
          railAnimation: railAnimation,
          appBar: _createAppBar(),
          body: createScreenFor(
            ScreenSelected.values[screenIndex],
            controller.value == 1,
          ),
          navigationRail: NavigationRail(
            extended: showLargeSizeLayout,
            destinations: _navRailDestinations,
            selectedIndex: screenIndex,
            onDestinationSelected: (index) {
              setState(() {
                screenIndex = index;
                handleScreenChanged(screenIndex);
              });
            },
            trailing: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child:
                    showLargeSizeLayout
                        ? ExpandedTrailingActions(
                          useLightMode: widget.useLightMode,
                          handleBrightnessChange: widget.handleBrightnessChange,
                          useMaterial3: widget.useMaterial3,
                          handleMaterialVersionChange:
                              widget.handleMaterialVersionChange,
                          handleImageSelect: widget.handleImageSelect,
                          handleColorSelect: widget.handleColorSelect,
                          colorSelectionMethod: widget.colorSelectionMethod,
                          imageSelected: widget.imageSelected,
                          colorSelected: widget.colorSelected,
                        )
                        : _trailingActions(),
              ),
            ),
          ),
          navigationBar: NavigationBars(
            onSelectItem: (index) {
              setState(() {
                screenIndex = index;
                handleScreenChanged(screenIndex);
              });
            },
            selectedIndex: screenIndex,
            isExampleBar: false,
          ),
        );
      },
    );
  }
}

final List<NavigationRailDestination> _navRailDestinations = appBarDestinations
    .map(
      (destination) => NavigationRailDestination(
        icon: Tooltip(message: destination.label, child: destination.icon),
        selectedIcon: Tooltip(
          message: destination.label,
          child: destination.selectedIcon,
        ),
        label: Text(destination.label),
      ),
    )
    .toList(growable: false);
