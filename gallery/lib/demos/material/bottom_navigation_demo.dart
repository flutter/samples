// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN bottomNavigationDemo

enum BottomNavigationDemoType {
  withLabels,
  withoutLabels,
}

class BottomNavigationDemo extends StatefulWidget {
  BottomNavigationDemo({Key key, @required this.type}) : super(key: key);

  final BottomNavigationDemoType type;

  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<_NavigationIconView> _navigationViews;

  String _title(BuildContext context) {
    switch (widget.type) {
      case BottomNavigationDemoType.withLabels:
        return GalleryLocalizations.of(context)
            .demoBottomNavigationPersistentLabels;
      case BottomNavigationDemoType.withoutLabels:
        return GalleryLocalizations.of(context)
            .demoBottomNavigationSelectedLabel;
    }
    return '';
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_navigationViews == null) {
      _navigationViews = <_NavigationIconView>[
        _NavigationIconView(
          icon: const Icon(Icons.add_comment),
          title: GalleryLocalizations.of(context).bottomNavigationCommentsTab,
          vsync: this,
        ),
        _NavigationIconView(
          icon: const Icon(Icons.calendar_today),
          title: GalleryLocalizations.of(context).bottomNavigationCalendarTab,
          vsync: this,
        ),
        _NavigationIconView(
          icon: const Icon(Icons.account_circle),
          title: GalleryLocalizations.of(context).bottomNavigationAccountTab,
          vsync: this,
        ),
        _NavigationIconView(
          icon: const Icon(Icons.alarm_on),
          title: GalleryLocalizations.of(context).bottomNavigationAlarmTab,
          vsync: this,
        ),
        _NavigationIconView(
          icon: const Icon(Icons.camera_enhance),
          title: GalleryLocalizations.of(context).bottomNavigationCameraTab,
          vsync: this,
        ),
      ];

      _navigationViews[_currentIndex].controller.value = 1;
    }
  }

  @override
  void dispose() {
    for (_NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
    super.dispose();
  }

  Widget _buildTransitionsStack() {
    final List<FadeTransition> transitions = <FadeTransition>[];

    for (_NavigationIconView view in _navigationViews) {
      transitions.add(view.transition(context));
    }

    // We want to have the newly animating (fading in) views on top.
    transitions.sort((a, b) {
      final aAnimation = a.opacity;
      final bAnimation = b.opacity;
      final aValue = aAnimation.value;
      final bValue = bAnimation.value;
      return aValue.compareTo(bValue);
    });

    return Stack(children: transitions);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    var bottomNavigationBarItems = _navigationViews
        .map<BottomNavigationBarItem>((navigationView) => navigationView.item)
        .toList();
    if (widget.type == BottomNavigationDemoType.withLabels) {
      bottomNavigationBarItems =
          bottomNavigationBarItems.sublist(0, _navigationViews.length - 2);
      _currentIndex =
          _currentIndex.clamp(0, bottomNavigationBarItems.length - 1).toInt();
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(_title(context)),
      ),
      body: Center(
        child: _buildTransitionsStack(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels:
            widget.type == BottomNavigationDemoType.withLabels,
        items: bottomNavigationBarItems,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: textTheme.caption.fontSize,
        unselectedFontSize: textTheme.caption.fontSize,
        onTap: (index) {
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
          });
        },
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.38),
        backgroundColor: colorScheme.primary,
      ),
    );
  }
}

class _NavigationIconView {
  _NavigationIconView({
    this.title,
    this.icon,
    TickerProvider vsync,
  })  : item = BottomNavigationBarItem(
          icon: icon,
          title: Text(title),
        ),
        controller = AnimationController(
          duration: kThemeAnimationDuration,
          vsync: vsync,
        ) {
    _animation = controller.drive(CurveTween(
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    ));
  }

  final String title;
  final Widget icon;
  final BottomNavigationBarItem item;
  final AnimationController controller;
  Animation<double> _animation;

  FadeTransition transition(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Stack(
        children: [
          ExcludeSemantics(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/demos/bottom_navigation_background.png',
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: IconTheme(
              data: IconThemeData(
                color: Colors.white,
                size: 80,
              ),
              child: Semantics(
                label: GalleryLocalizations.of(context)
                    .bottomNavigationContentPlaceholder(title),
                child: icon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// END
