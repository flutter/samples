import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:rally_proto/financial_entity/financial_entity.dart';
import 'package:rally_proto/util/colors.dart';

class RallyLineChart extends StatelessWidget {
  RallyLineChart({this.events});

  final List<DetailedEventItem> events;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: RallyLineChartPainter(context, events)
    );
  }
}

class RallyLineChartPainter extends CustomPainter {
  RallyLineChartPainter(this.context, this.events);

  final BuildContext context;

  // Events to plot on the line as points.
  final List<DetailedEventItem> events;

  // Number of days to plot.
  // This is hardcoded to reflect the dummy data, but would be dynamic in a real app.
  // For demo only.
  final int numDays = 52;

  // Beginning of window. The end is this plus numDays.
  // This is hardcoded to reflect the dummy data, but would be dynamic in a real app.
  // For demo only.
  final DateTime startDate = DateTime.utc(2018, 12, 1);

  // Ranges uses to lerp the pixel points.
  // This is hardcoded to reflect the dummy data, but would be dynamic in a real app.
  // For demo only.
  final double maxAmount = 3000.0; // minAmount is assumed to be 0.0

  // The number of milliseconds in a day. This is the inherit period fot the points in this line.
  final int millisInDay = 24 * 60 * 60 * 1000;

  // Amount to shift the tick drawing by so that the sunday ticks do not start on the edge.
  // For demo only.
  final int tickShift = 3;

  // Arbitrary unit of space for absolute positioned painting.
  final double space = 16.0;


  @override
  void paint(Canvas canvas, Size size) {
    double ticksTop = size.height - space * 5.0;
    double labelsTop = size.height - space * 2;
    _drawLine(canvas, Rect.fromLTWH(0.0, 0.0, size.width, ticksTop));
    _drawXAxisTicks(canvas, Rect.fromLTWH(0.0, ticksTop, size.width, labelsTop - ticksTop));
    _drawXAxisLabels(canvas, Rect.fromLTWH(0.0, labelsTop, size.width, size.height - labelsTop));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  _drawLine(Canvas canvas, Rect rect) {
    Paint linePaint = Paint()
      // TODO(demo): Change the line color here. Try passing 0, 1, 3, etc.
      ..color = RallyColors.getAccountColor(2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    // Arbitrary value for the first point. In a real app, a wider range of
    // points would be used that go beyond the boundaries of the screen.
    double lastAmount = 800.0;

    // TODO(demo): This is the number of points to skip. The higher it is, the more smooth curve will be when drawing quadratic splines.
    int smooth = 7; // try 1, 7, 15, etc.

    // Align the points with equal deltas (1 day) as a cumulative sum.
    int startMillis = startDate.millisecondsSinceEpoch;
    final List<Offset> points = [Offset(0.0, (maxAmount - lastAmount) / maxAmount * rect.height)];
    for (int i = 0; i < numDays + smooth; i++) {
      int endMillis = startMillis + millisInDay * 1;
      List<DetailedEventItem> filteredEvents = events.where((e) => startMillis <= e.date.millisecondsSinceEpoch && e.date.millisecondsSinceEpoch <= endMillis).toList();
      lastAmount += filteredEvents.fold(0.0, (sum, e) => sum + e.amount);
      double x = i / numDays * rect.width;
      double y = (maxAmount - lastAmount) / maxAmount * rect.height;
      points.add(Offset(x, y));
      startMillis = endMillis;
    }

    final Path path = Path();
    path.moveTo(points[0].dx, points[0].dy);
    for (int i = 1; i < points.length - smooth; i += smooth) {
      double x1 = points[i].dx;
      double y1 = points[i].dy;

      // TODO(demo): Comment out the next line and uncomment the next 3 to draw smoother lines between points.
//            path.lineTo(x1, y1);
      double x2 = (x1 + points[i + smooth].dx) / 2;
      double y2 = (y1 + points[i + smooth].dy) / 2;
      path.quadraticBezierTo(x1, y1, x2, y2);
    }
    canvas.drawPath(path, linePaint);
  }

  _drawXAxisTicks(Canvas canvas, Rect rect) {
    double dayTop = (rect.top + rect.bottom) / 2;
    for (int i = 0; i < numDays; i++) {
      double x =  rect.width / numDays * i;
      canvas.drawRect(
          new Rect.fromPoints(Offset(x, i % 7 == tickShift ? rect.top : dayTop), Offset(x, rect.bottom)),
          new Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.0
            ..color = RallyColors.gray25a
      );
    }
  }

  _drawXAxisLabels(Canvas canvas, Rect rect) {
    TextPainter leftLabel = TextPainter(
      text: TextSpan(
          text: 'DEC 2018',
          style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w700, color: RallyColors.gray25a)
      ),
      textDirection: TextDirection.ltr,
    );
    leftLabel.layout();
    leftLabel.paint(canvas, Offset(rect.left + space / 2, rect.center.dy));

    TextPainter centerLabel = TextPainter(
      text: TextSpan(
          text: 'JAN 2019',
          style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w700)
      ),
      textDirection: TextDirection.ltr,
    );
    centerLabel.layout();
    centerLabel.paint(canvas, Offset((rect.width - centerLabel.width) / 2, rect.center.dy));

    TextPainter rightLabel = TextPainter(
      text: TextSpan(
          text: 'FEB 2018',
          style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w700, color: RallyColors.gray25a)
      ),
      textDirection: TextDirection.ltr,
    );
    rightLabel.layout();
    rightLabel.paint(canvas, Offset(rect.right - centerLabel.width - space / 2, rect.center.dy));
  }
}