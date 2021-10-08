import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:github_dataviz/catmull.dart';
import 'package:github_dataviz/constants.dart';
import 'package:github_dataviz/data/data_series.dart';
import 'package:github_dataviz/data/week_label.dart';
import 'package:github_dataviz/mathutils.dart';

class LayeredChart extends StatefulWidget {
  final List<DataSeries> dataToPlot;
  final List<WeekLabel> milestones;
  final double animationValue;

  const LayeredChart(this.dataToPlot, this.milestones, this.animationValue,
      {Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LayeredChartState();
  }
}

class LayeredChartState extends State<LayeredChart> {
  late List<Path> paths;
  late List<Path> capPaths;
  late List<double> maxValues;
  late double theta;
  late double graphHeight;
  late List<TextPainter> labelPainter;
  late List<TextPainter> milestonePainter;
  Size? lastSize;

  void buildPaths(
      Size size,
      List<DataSeries> dataToPlot,
      List<WeekLabel> milestones,
      int numPoints,
      double graphGap,
      double margin,
      double capTheta,
      double capSize) {
    double screenRatio = size.width / size.height;
    double degrees = MathUtils.clampedMap(screenRatio, 0.5, 2.5, 50, 5);
    theta = pi * degrees / 180;
    graphHeight = MathUtils.clampedMap(screenRatio, 0.5, 2.5, 50, 150);

    int m = dataToPlot.length;
    paths = <Path>[];
    capPaths = <Path>[];
    maxValues = <double>[];
    for (int i = 0; i < m; i++) {
      int n = dataToPlot[i].series.length;
      maxValues.add(0);
      for (int j = 0; j < n; j++) {
        double v = dataToPlot[i].series[j].toDouble();
        if (v > maxValues[i]) {
          maxValues[i] = v;
        }
      }
    }
    double totalGap = m * graphGap;
    double xIndent = totalGap / tan(capTheta);
    double startX = margin + xIndent;
    double endX = size.width - margin;
    double startY = size.height;
    double endY = startY - (endX - startX) * tan(theta);
    double xWidth = (endX - startX) / numPoints;
    double capRangeX = capSize * cos(capTheta);
    double tanCapTheta = tan(capTheta);
    List<double> curvePoints = <double>[];
    for (int i = 0; i < m; i++) {
      List<int> series = dataToPlot[i].series;
      int n = series.length;
      List<Point2D> controlPoints = <Point2D>[];
      controlPoints.add(Point2D(-1, 0));
      double last = 0;
      for (int j = 0; j < n; j++) {
        double v = series[j].toDouble();
        controlPoints.add(Point2D(j.toDouble(), v));
        last = v;
      }
      controlPoints.add(Point2D(n.toDouble(), last));
      CatmullInterpolator curve = CatmullInterpolator(controlPoints);
      ControlPointAndValue cpv = ControlPointAndValue();
      for (int j = 0; j < numPoints; j++) {
        cpv.value = MathUtils.map(
            j.toDouble(), 0, (numPoints - 1).toDouble(), 0, (n - 1).toDouble());
        curve.progressiveGet(cpv);
        curvePoints.add(MathUtils.map(
            max(0, cpv.value!), 0, maxValues[i].toDouble(), 0, graphHeight));
      }
      paths.add(Path());
      capPaths.add(Path());
      paths[i].moveTo(startX, startY);
      capPaths[i].moveTo(startX, startY);
      for (int j = 0; j < numPoints; j++) {
        double v = curvePoints[j];
        int k = j + 1;
        double xDist = xWidth;
        double capV = v;
        while (k < numPoints && xDist <= capRangeX) {
          double cy = curvePoints[k] + xDist * tanCapTheta;
          capV = max(capV, cy);
          k++;
          xDist += xWidth;
        }
        double x = MathUtils.map(
            j.toDouble(), 0, (numPoints - 1).toDouble(), startX, endX);
        double baseY = MathUtils.map(
            j.toDouble(), 0, (numPoints - 1).toDouble(), startY, endY);
        double y = baseY - v;
        double cY = baseY - capV;
        paths[i].lineTo(x, y);
        if (j == 0) {
          int k = capRangeX ~/ xWidth;
          double mx = MathUtils.map(
              -k.toDouble(), 0, (numPoints - 1).toDouble(), startX, endX);
          double my = MathUtils.map(
                  -k.toDouble(), 0, (numPoints - 1).toDouble(), startY, endY) -
              capV;
          capPaths[i].lineTo(mx, my);
        }
        capPaths[i].lineTo(x, cY);
      }
      paths[i].lineTo(endX, endY);
      paths[i].lineTo(endX, endY + 1);
      paths[i].lineTo(startX, startY + 1);
      paths[i].close();
      capPaths[i].lineTo(endX, endY);
      capPaths[i].lineTo(endX, endY + 1);
      capPaths[i].lineTo(startX, startY + 1);
      capPaths[i].close();
    }
    labelPainter = <TextPainter>[];
    for (int i = 0; i < dataToPlot.length; i++) {
      TextSpan span = TextSpan(
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 12),
          text: dataToPlot[i].label.toUpperCase());
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr);
      tp.layout();
      labelPainter.add(tp);
    }
    milestonePainter = <TextPainter>[];
    for (int i = 0; i < milestones.length; i++) {
      TextSpan span = TextSpan(
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 10),
          text: milestones[i].label.toUpperCase());
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr);
      tp.layout();
      milestonePainter.add(tp);
    }
    lastSize = Size(size.width, size.height);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Constants.backgroundColor,
        child: CustomPaint(
            foregroundPainter: ChartPainter(this, widget.dataToPlot,
                widget.milestones, 80, 50, 50, 12, 500, widget.animationValue),
            child: Container()));
  }
}

class ChartPainter extends CustomPainter {
  static List<Color?> colors = [
    Colors.red[900],
    const Color(0xffc4721a),
    Colors.lime[900],
    Colors.green[900],
    Colors.blue[900],
    Colors.purple[900],
  ];
  static List<Color?> capColors = [
    Colors.red[500],
    Colors.amber[500],
    Colors.lime[500],
    Colors.green[500],
    Colors.blue[500],
    Colors.purple[500],
  ];

  List<DataSeries> dataToPlot;
  List<WeekLabel> milestones;

  double margin;
  double graphGap;
  late double capTheta;
  double capSize;
  int numPoints;
  double amount = 1.0;

  late Paint pathPaint;
  late Paint capPaint;
  late Paint textPaint;
  late Paint milestonePaint;
  late Paint linePaint;
  late Paint fillPaint;

  LayeredChartState state;

  ChartPainter(
      this.state,
      this.dataToPlot,
      this.milestones,
      this.margin,
      this.graphGap,
      double capDegrees,
      this.capSize,
      this.numPoints,
      this.amount) {
    capTheta = pi * capDegrees / 180;
    pathPaint = Paint();
    pathPaint.style = PaintingStyle.fill;
    capPaint = Paint();
    capPaint.style = PaintingStyle.fill;
    textPaint = Paint();
    textPaint.color = const Color(0xFFFFFFFF);
    milestonePaint = Paint();
    milestonePaint.color = Constants.milestoneColor;
    milestonePaint.style = PaintingStyle.stroke;
    milestonePaint.strokeWidth = 2;
    linePaint = Paint();
    linePaint.style = PaintingStyle.stroke;
    linePaint.strokeWidth = 0.5;
    fillPaint = Paint();
    fillPaint.style = PaintingStyle.fill;
    fillPaint.color = const Color(0xFF000000);
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (dataToPlot.isEmpty) {
      return;
    }

    if (state.lastSize == null ||
        size.width != state.lastSize!.width ||
        size.height != state.lastSize!.height) {
      print('Building paths, lastsize = ${state.lastSize}');
      state.buildPaths(size, dataToPlot, milestones, numPoints, graphGap,
          margin, capTheta, capSize);
    }
    int m = dataToPlot.length;
    int numWeeks = dataToPlot[0].series.length;
    // How far along to draw
    double totalGap = m * graphGap;
    double xIndent = totalGap / tan(capTheta);
    double dx = xIndent / (m - 1);
    double startX = margin + xIndent;
    double endX = size.width - margin;
    double startY = size.height;
    double endY = startY - (endX - startX) * tan(state.theta);
    // MILESTONES
    {
      for (int i = 0; i < milestones.length; i++) {
        WeekLabel milestone = milestones[i];
        double p = (milestone.weekNum!.toDouble() / numWeeks) + (1 - amount);
        if (p < 1) {
          double x1 = MathUtils.map(p, 0, 1, startX, endX);
          double y1 = MathUtils.map(p, 0, 1, startY, endY);
          double x2 = x1 - xIndent;
          double y2 = y1 - graphGap * (m - 1);
          x1 += dx * 0.5;
          y1 += graphGap * 0.5;
          double textY = y1 + 5;
          double textX = x1 + 5 * tan(capTheta);
          canvas.drawLine(Offset(x1, y1), Offset(x2, y2), milestonePaint);
          canvas.save();
          TextPainter tp = state.milestonePainter[i];
          canvas.translate(textX, textY);
          canvas.skew(tan(capTheta * 1.0), -tan(state.theta));
          canvas.translate(-tp.width / 2, 0);
          tp.paint(canvas, const Offset(0, 0));
          canvas.restore();
        }
      }
    }
    for (int i = m - 1; i >= 0; i--) {
      canvas.save();
      canvas.translate(-dx * i, -graphGap * i);

      {
        // TEXT LABELS
        canvas.save();
        double textPosition = 0.2;
        double textX = MathUtils.map(textPosition, 0, 1, startX, endX);
        double textY = MathUtils.map(textPosition, 0, 1, startY, endY) + 5;
        canvas.translate(textX, textY);
        TextPainter tp = state.labelPainter[i];
        canvas.skew(0, -tan(state.theta));
        canvas.drawRect(
            Rect.fromLTWH(-1, -1, tp.width + 2, tp.height + 2), fillPaint);
        tp.paint(canvas, const Offset(0, 0));
        canvas.restore();
      }

      linePaint.color = capColors[i]!;
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), linePaint);

      Path clipPath = Path();
      clipPath.moveTo(startX - capSize, startY + 11);
      clipPath.lineTo(endX, endY + 1);
      clipPath.lineTo(endX, endY - state.graphHeight - capSize);
      clipPath.lineTo(startX - capSize, startY - state.graphHeight - capSize);
      clipPath.close();
      canvas.clipPath(clipPath);

      pathPaint.color = colors[i]!;
      capPaint.color = capColors[i]!;
      double offsetX = MathUtils.map(1 - amount, 0, 1, startX, endX);
      double offsetY = MathUtils.map(1 - amount, 0, 1, startY, endY);
      canvas.translate(offsetX - startX, offsetY - startY);
      canvas.drawPath(state.capPaths[i], capPaint);
      canvas.drawPath(state.paths[i], pathPaint);

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
