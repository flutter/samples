import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'numberpicker.dart';

main() => runApp(MaterialApp(home: App(), debugShowCheckedModeBanner: false));

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TM();
}

enum SI { pause, play, stop }
List<T> triangles;
var percent = 0.0, cTime = 0.0, dur = 120000.0, rng = Random(), rebuild = true;

class TM extends State<App> {
  SI cState = SI.stop;
  Ticker t;
  var pTime = 0.0;

  @override
  initState() {
// Screen.keepOn(true);
    t = Ticker(up);
    super.initState();
  }

  up(Duration d) {
    if (cState == SI.play) {
      setState(() {
        if (cTime >= dur)
          stop();
        else {
          cTime = d.inMilliseconds.toDouble() + pTime;
          percent = cTime / dur;
        }
      });
    }
  }

  press() {
    if (cState == SI.play)
      pause();
    else if (cState == SI.pause)
      play();
    else {
      cState = SI.play;
      t.start();
    }
  }

  pause() {
    setState(() {
      cState = SI.pause;
      t.stop();
    });
  }

  play() {
    setState(() {
      cState = SI.play;
      t.start();
      pTime = cTime;
    });
  }

  stop() {
    setState(() {
      cState = SI.stop;
      t.stop();
      pTime = 0.0;
      cTime = 0.0;
      percent = 0.0;
    });
  }

  openDialog() {
    showDialog<num>(
        context: context,
        builder: (BuildContext context) {
          return NumberPickerDialog.integer(
              initialIntegerValue: (dur + 1.0) ~/ 60000,
              maxValue: 20,
              minValue: 1,
              title: Text('Minutes'));
        }).then((num v) {
      if (v != null) dur = 60000.0 * v;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> w = List();

    if (cState == SI.pause) {
      w.add(fab(Colors.green, play, Icons.play_arrow));
      w.add(SizedBox(height: 10));
      w.add(fab(Colors.red, stop, Icons.close));
      w.add(SizedBox(height: 20));
    }

    if (cState == SI.stop) {
      w.add(fab(Colors.lightBlue, openDialog, Icons.timer));
      w.add(SizedBox(height: 10));
      w.add(fab(Colors.yellow[900], () {
        rebuild = true;
      }, Icons.loop));
      w.add(SizedBox(height: 20));
    }

    Column r = Column(mainAxisAlignment: MainAxisAlignment.end, children: w);

    return Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox.expand(
            child: Container(
                child: CustomPaint(
                    painter: P(),
                    child: FlatButton(
                        onPressed: press,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [r]))))));
  }
}

FloatingActionButton fab(Color c, VoidCallback f, IconData ic) =>
    FloatingActionButton(backgroundColor: c, onPressed: f, child: Icon(ic));

class P extends CustomPainter {
  @override
  paint(Canvas canvas, Size size) {
    var w = size.width, h = size.height, d = 2 / 3 * w;
    if (w > 0.1 && h > 0.1) {
      if (rebuild) {
        rebuild = false;
        setupT();
        for (var t in triangles) t.setupdP(w / d, h / d);
      }

      for (var t in triangles) {
        var cP = t.cP(), p = Path();
        p.moveTo(cP[0].x * d + w / 2, cP[0].y * d + h / 2);
        for (i = 1; i < 3; i++)
          p.lineTo(cP[i].x * d + w / 2, cP[i].y * d + h / 2);
        p.close();
        canvas.drawPath(p, t.p);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

int i;

class T {
  List<Point> dP = List(3), sP = List(3);
  Paint p;

  T(Point p1, p2, p3, var c) {
    p = Paint()..style = PaintingStyle.fill;
    sP[0] = p1;
    sP[1] = p2;
    sP[2] = p3;
    p.color = c[100 * (rng.nextInt(9) + 1)];

    double x = 0, y = 0;
    for (i = 0; i < 3; i++) {
      x += sP[i].x;
      y += sP[i].y;
    }

    x = 2 * x / 3;
    y = 2 * y / 3;
    if (x * x + y * y < 1) triangles.add(this);
  }

  setupdP(double wR, hR) {
    var x = (rng.nextDouble() - 0.5) * (wR - 0.1),
        y = (rng.nextDouble() - 0.5) * (hR - 0.1);
    dP[0] = Point(x, y);
    for (i = 1; i < 3; i++)
      dP[i] = Point(sP[i].x + x - sP[0].x, sP[i].y + y - sP[0].y);
  }

  List<Point> cP() {
    List<Point> res = List(3);
    var p, k, o = 6000, r;
    if (cTime < o)
      p = 1 - cTime / o;
    else
      p = (cTime - o) / (dur - o);
    k = 2 * ((cTime.toInt() % o) - o / 2).abs() / o;
    r = min(min(1, (dur - cTime) / o), cTime / o);
    this.p.color = this.p.color.withAlpha(255 - (200 * k * r).toInt());

    for (i = 0; i < 3; i++)
      res[i] = Point(
          sP[i].x * p + dP[i].x * (1 - p), sP[i].y * p + dP[i].y * (1 - p));

    if (cTime > o) {
      var d = res[0].distanceTo(sP[0]);
      var a = acos((sP[0].x - res[0].x) / d);
      if (sP[0].y > res[0].y) a = 2 * pi - a;
      var b = pi - a + p * pi * dur / 120000;
      var dX = cos(b) * d, dY = sin(b) * d;
      for (i = 0; i < 3; i++) res[i] = Point(sP[i].x + dX, sP[i].y + dY);
    }

    double mx = 0, my = 0;
    for (i = 0; i < 3; i++) {
      mx += res[i].x;
      my += res[i].y;
    }
    mx /= 3;
    my /= 3;
    for (i = 0; i < 3; i++)
      res[i] = Point(res[i].x + (res[i].x - mx) * (1 - k) * r / 2,
          res[i].y + (res[i].y - my) * (1 - k) * r / 2);

    return res;
  }
}

setupT() {
  int dim = 20, x, y;
  List<Point> tri = List(dim * dim);

  for (x = 0; x < dim; x++) {
    for (y = 0; y < dim; y++) {
      var dx = rng.nextDouble() - 0.5, dy = rng.nextDouble() - 0.5, off;
      if (x % 2 == 0)
        off = 0;
      else
        off = 0.5;
      tri[x * dim + y] =
          Point((x + dx) / (dim - 1) - 0.5, (y + off + dy) / (dim - 1) - 0.5);
    }
  }
  triangles = List();
  var r = rng.nextInt(5), c;
  if (r == 0) c = Colors.lightBlue;
  if (r == 1) c = Colors.yellow;
  if (r == 2) c = Colors.lightGreen;
  if (r == 3) c = Colors.red;
  if (r == 4) c = Colors.pink;

  for (x = 0; x < dim - 1; x++) {
    for (y = 0; y < dim - 1; y++) {
      int off = x * dim;
      T(tri[y + off], tri[y + 1 + off], tri[y + off + dim], c);
      T(tri[y + off + dim], tri[y + 1 + off], tri[y + 1 + off + dim], c);
    }
  }
}
