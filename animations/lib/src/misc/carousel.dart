// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// This sample is based on the `coverflow` package
/// https://github.com/efortuna/coverflow
class CarouselDemo extends StatelessWidget {
  static String routeName = '/misc/carousel';

  static List<String> fileNames = [
    'assets/eat_cape_town_sm.jpg',
    'assets/eat_new_orleans_sm.jpg',
    'assets/eat_sydney_sm.jpg',
  ];

  final List<Widget> data = [
    ...fileNames.map((file) => Image.asset(file, fit: BoxFit.cover))
  ];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Demo'),
      ),
      body: Carousel(itemBuilder: widgetBuilder),
    );
  }

  Widget widgetBuilder(context, int index) {
    return data[index % data.length];
  }
}

typedef void OnCurrentItemChangedCallback(int currentItem);

class Carousel extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;

  const Carousel({Key key, @required this.itemBuilder});

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final _height = 525;
  final _width = 700;
  PageController _controller;
  int _currentPage;
  bool _pageHasChanged = false;

  @override
  initState() {
    super.initState();
    _currentPage = 0;
    _controller = PageController(
      viewportFraction: .85,
      initialPage: _currentPage,
    );
  }

  @override
  Widget build(context) {
    return PageView.builder(
        onPageChanged: (value) {
          setState(() {
            _pageHasChanged = true;
            _currentPage = value;
          });
        },
        controller: _controller,
        itemBuilder: (context, index) => builder(index));
  }

  Widget builder(int index) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          var result = _pageHasChanged ? _controller.page : _currentPage * 1.0;
          var value = result - index;

          // value - The horizontal position of the page between a 1 and 0
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0) as double;

          var actualWidget = Center(
            child: SizedBox(
              height: Curves.easeOut.transform(value) * _height,
              width: Curves.easeOut.transform(value) * _width,
              child: child,
            ),
          );
          return actualWidget;
        },
        child: widget.itemBuilder(context, index));
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
}
