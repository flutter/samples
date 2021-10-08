import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:github_dataviz/constants.dart';
import 'package:github_dataviz/data/week_label.dart';
import 'package:github_dataviz/mathutils.dart';

typedef MouseDownCallback = void Function(double xFraction);
typedef MouseMoveCallback = void Function(double xFraction);
typedef MouseUpCallback = void Function();

class Timeline extends StatefulWidget {
  final int numWeeks;
  final double animationValue;
  final List<WeekLabel> weekLabels;

  final MouseDownCallback mouseDownCallback;
  final MouseMoveCallback mouseMoveCallback;
  final MouseUpCallback mouseUpCallback;

  Timeline(
      {@required this.numWeeks,
      @required this.animationValue,
      @required this.weekLabels,
      this.mouseDownCallback,
      this.mouseMoveCallback,
      this.mouseUpCallback});

  @override
  State<StatefulWidget> createState() {
    return TimelineState();
  }
}

class TimelineState extends State<Timeline> {
  HashMap<String, TextPainter> labelPainters = HashMap();

  @override
  void initState() {
    super.initState();
    for (int year = 2015; year < 2020; year++) {
      String yearLabel = "$year";
      labelPainters[yearLabel] =
          _makeTextPainter(Constants.timelineLineColor, yearLabel);
    }

    widget.weekLabels.forEach((WeekLabel weekLabel) {
      labelPainters[weekLabel.label] =
          _makeTextPainter(Constants.milestoneTimelineColor, weekLabel.label);
      labelPainters[weekLabel.label + "_red"] =
          _makeTextPainter(Colors.redAccent, weekLabel.label);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onHorizontalDragDown: (DragDownDetails details) {
        if (widget.mouseDownCallback != null) {
          widget.mouseDownCallback(
              _getClampedXFractionLocalCoords(context, details.globalPosition));
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        if (widget.mouseUpCallback != null) {
          widget.mouseUpCallback();
        }
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        if (widget.mouseMoveCallback != null) {
          widget.mouseMoveCallback(
              _getClampedXFractionLocalCoords(context, details.globalPosition));
        }
      },
      child: CustomPaint(
          foregroundPainter: TimelinePainter(
              this, widget.numWeeks, widget.animationValue, widget.weekLabels),
          child: Container(
            height: 200,
          )),
    );
  }

  TextPainter _makeTextPainter(Color color, String label) {
    TextSpan span =
        TextSpan(style: TextStyle(color: color, fontSize: 12), text: label);
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp.layout();
    return tp;
  }

  double _getClampedXFractionLocalCoords(
      BuildContext context, Offset globalOffset) {
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(globalOffset);
    return MathUtils.clamp(localOffset.dx / context.size.width, 0, 1);
  }
}

class TimelinePainter extends CustomPainter {
  TimelineState state;

  Paint mainLinePaint;
  Paint milestoneLinePaint;

  Color lineColor = Colors.white;

  int numWeeks;
  double animationValue;
  int weekYearOffset =
      9; // Week 0 in our data is 9 weeks before the year boundary (i.e. week 43)

  List<WeekLabel> weekLabels;

  int yearNumber = 2015;

  TimelinePainter(
      this.state, this.numWeeks, this.animationValue, this.weekLabels) {
    mainLinePaint = Paint();
    mainLinePaint.style = PaintingStyle.stroke;
    mainLinePaint.color = Constants.timelineLineColor;
    milestoneLinePaint = Paint();
    milestoneLinePaint.style = PaintingStyle.stroke;
    milestoneLinePaint.color = Constants.milestoneTimelineColor;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double labelHeight = 20;
    double labelHeightDoubled = labelHeight * 2;

    double mainLineY = size.height / 2;
    canvas.drawLine(
        Offset(0, mainLineY), Offset(size.width, mainLineY), mainLinePaint);

    double currTimeX = size.width * animationValue;
    canvas.drawLine(
        Offset(currTimeX, labelHeightDoubled),
        Offset(currTimeX, size.height - labelHeightDoubled),
        milestoneLinePaint);

    {
      for (int week = 0; week < numWeeks; week++) {
        double lineHeight = size.height / 32;
        bool isYear = false;
        if ((week - 9) % 52 == 0) {
          // Year
          isYear = true;
          lineHeight = size.height / 2;
        } else if ((week - 1) % 4 == 0) {
          // Month
          lineHeight = size.height / 8;
        }

        double currX = (week / numWeeks.toDouble()) * size.width;
        if (lineHeight > 0) {
          double margin = (size.height - lineHeight) / 2;
          double currTimeXDiff = (currTimeX - currX) / size.width;
          if (currTimeXDiff > 0) {
            var mappedValue =
                MathUtils.clampedMap(currTimeXDiff, 0, 0.025, 0, 1);
            var lerpedColor = Color.lerp(Constants.milestoneTimelineColor,
                Constants.timelineLineColor, mappedValue);
            mainLinePaint.color = lerpedColor;
          } else {
            mainLinePaint.color = Constants.timelineLineColor;
          }
          canvas.drawLine(Offset(currX, margin),
              Offset(currX, size.height - margin), mainLinePaint);
        }

        if (isYear) {
          var yearLabel = "$yearNumber";
          state.labelPainters[yearLabel]
              .paint(canvas, Offset(currX, size.height - labelHeight));
          yearNumber++;
        }
      }
    }

    {
      for (int i = 0; i < weekLabels.length; i++) {
        WeekLabel weekLabel = weekLabels[i];
        double currX = (weekLabel.weekNum / numWeeks.toDouble()) * size.width;
        var timelineXDiff = (currTimeX - currX) / size.width;
        double maxTimelineDiff = 0.08;
        TextPainter textPainter = state.labelPainters[weekLabel.label];
        if (timelineXDiff > 0 &&
            timelineXDiff < maxTimelineDiff &&
            animationValue < 1) {
          var mappedValue =
              MathUtils.clampedMap(timelineXDiff, 0, maxTimelineDiff, 0, 1);
          var lerpedColor = Color.lerp(
              Colors.redAccent, Constants.milestoneTimelineColor, mappedValue);
          milestoneLinePaint.strokeWidth =
              MathUtils.clampedMap(timelineXDiff, 0, maxTimelineDiff, 6, 1);
          milestoneLinePaint.color = lerpedColor;
        } else {
          milestoneLinePaint.strokeWidth = 1;
          milestoneLinePaint.color = Constants.milestoneTimelineColor;
        }

        double lineHeight = size.height / 2;
        double margin = (size.height - lineHeight) / 2;
        canvas.drawLine(Offset(currX, margin),
            Offset(currX, size.height - margin), milestoneLinePaint);

        textPainter.paint(
            canvas, Offset(currX, size.height - labelHeightDoubled));
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
