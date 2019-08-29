// Copyright 2019-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:rally/colors.dart';
import 'package:rally/data.dart';
import 'package:rally/formatters.dart';

/// A colored piece of the [RallyPieChart].
class RallyPieChartSegment {
  final Color color;
  final double value;

  const RallyPieChartSegment({this.color, this.value});
}

/// Utils for [RallyPieChart].
class RallyPieChartSegments {
  static List<RallyPieChartSegment> fromAccountItems(List<AccountData> items) {
    var generator = (int i) => RallyPieChartSegment(color: RallyColors.accountColor(i), value: items[i].primaryAmount);
    return List<RallyPieChartSegment>.generate(items.length, generator);
  }

  static List<RallyPieChartSegment> fromBillItems(List<BillData> items) {
    var generator = (int i) => RallyPieChartSegment(color: RallyColors.billColor(i), value: items[i].primaryAmount);
    return List<RallyPieChartSegment>.generate(items.length, generator);
  }

  static List<RallyPieChartSegment> fromBudgetItems(List<BudgetData> items) {
    var generator = (int i) => RallyPieChartSegment(color: RallyColors.budgetColor(i), value: items[i].primaryAmount - items[i].amountUsed);
    return List<RallyPieChartSegment>.generate(items.length, generator);
  }
}

/// An animated circular pie chart to represent pieces of a whole, which can have empty space.
class RallyPieChart extends StatefulWidget {
  RallyPieChart({this.heroLabel, this.heroAmount, this.wholeAmount, this.segments});

  final String heroLabel;
  final double heroAmount;
  final double wholeAmount;
  final List<RallyPieChartSegment> segments;

  _RallyPieChartState createState() => _RallyPieChartState();
}

class _RallyPieChartState extends State<RallyPieChart> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  @override
  initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 600), vsync: this);
    animation = CurvedAnimation(parent: TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.0), weight: 1.0),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 1.0), weight: 1.5),
    ]).animate(controller),
        curve: Curves.decelerate);
    controller.forward();
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return _AnimatedRallyPieChart(
      animation: animation,
      centerLabel: widget.heroLabel,
      centerAmount: widget.heroAmount,
      total: widget.wholeAmount,
      segments: widget.segments,
    );
  }
}

class _AnimatedRallyPieChart extends AnimatedWidget {
  _AnimatedRallyPieChart({
    Key key,
    this.animation,
    this.centerLabel,
    this.centerAmount,
    this.total,
    this.segments
  })
      : super(key: key, listenable: animation);

  final Animation<double> animation;
  final String centerLabel;
  final double centerAmount;
  final double total;
  final List<RallyPieChartSegment> segments;

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return DecoratedBox(
      decoration: _RallyPieChartOutlineDecoration(
          maxFraction: animation.value,
          total: total,
          segments: segments
      ),
      child: SizedBox(
          height: 300.0,
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(centerLabel, style: Theme.of(context).textTheme.body1.copyWith(fontSize: 14.0, letterSpacing: 0.5)),
                    Text(Formatters.usdWithSign.format(centerAmount),
                        style: Theme.of(context).textTheme.headline),
                  ])
          )
      ),
    );
  }
}

class _RallyPieChartOutlineDecoration extends Decoration {
  _RallyPieChartOutlineDecoration({this.maxFraction, this.total, this.segments});

  final double maxFraction;
  final double total;
  final List<RallyPieChartSegment> segments;

  @override
  BoxPainter createBoxPainter([onChanged]) {
    return _RallyPieChartOutlineBoxPainter(
      maxFraction: maxFraction,
      wholeAmount: total,
      segments: segments,
    );
  }
}

class _RallyPieChartOutlineBoxPainter extends BoxPainter {
  _RallyPieChartOutlineBoxPainter({this.maxFraction, this.wholeAmount, this.segments});

  final double maxFraction;
  final double wholeAmount;
  final List<RallyPieChartSegment> segments;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // Create two padded rects to draw arcs in: one for colored arcs and one for inner bg arc.
    double strokeWidth = 4.0;
    double outerRadius = min(configuration.size.width, configuration.size.height) / 2;
    Rect outerRect = Rect.fromCircle(center: configuration.size.center(Offset.zero), radius: outerRadius - strokeWidth * 3.0);
    Rect innerRect = Rect.fromCircle(center: configuration.size.center(Offset.zero), radius: outerRadius - strokeWidth * 4.0);

    // Paint each arc with spacing.
    double cummulativeSpace = 0.0;
    double cummulativeTotal = 0.0;
    double wholeRadians = (2.0 * pi);
    double spaceRadians = wholeRadians / 180.0;
    double wholeMinusSpacesRadians = wholeRadians - (segments.length * spaceRadians);
    for (RallyPieChartSegment segment in segments) {
      Paint paint = Paint()..color = segment.color;
      double start = maxFraction * ((cummulativeTotal / wholeAmount * wholeMinusSpacesRadians) + cummulativeSpace) - pi / 2.0;
      double sweep = maxFraction * (segment.value / wholeAmount * wholeMinusSpacesRadians);
      canvas.drawArc(outerRect, start, sweep, true, paint);
      cummulativeTotal += segment.value;
      cummulativeSpace += spaceRadians;
    }

    // Paint any remaining space black (e.g. budget amount remaining).
    double remaining = wholeAmount - cummulativeTotal;
    if (remaining > 0) {
      Paint paint = Paint()..color = Colors.black;
      double start = maxFraction * ((cummulativeTotal / wholeAmount * wholeMinusSpacesRadians) + spaceRadians * segments.length) - pi / 2.0;
      double sweep = maxFraction * (remaining / wholeAmount * wholeMinusSpacesRadians - spaceRadians);
      canvas.drawArc(outerRect, start, sweep, true, paint);
    }

    // Paint a smaller inner circle to cover the painted arcs, so they are display as segments.
    Paint bgPaint = Paint()..color = RallyColors.primaryBackground;
    canvas.drawArc(innerRect, 0.0, 2.0 * pi, true, bgPaint);
  }
}