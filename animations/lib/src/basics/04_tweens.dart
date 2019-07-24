import 'package:flutter/material.dart';

class TweenDemo extends StatefulWidget {
  static const String routeName = '/basics/tweens';

  _TweenDemoState createState() => _TweenDemoState();
}

class _TweenDemoState extends State<TweenDemo>
    with SingleTickerProviderStateMixin {
  static const Duration _duration = Duration(seconds: 1);
  static const double accountBalance = 1000000;
  AnimationController controller;
  Animation<double> animation;

  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: _duration)
      ..addListener(() {
        // Marks the widget tree as dirty
        setState(() {});
      });
    animation = Tween(begin: 0.0, end: accountBalance).animate(controller);
  }

  void dispose() {
    super.dispose();
    controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child: Text('\$${animation.value.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 24)),
            ),
            MaterialButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                controller.status == AnimationStatus.completed
                    ? 'Buy a Mansion'
                    : 'Win Lottery',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if (controller.status == AnimationStatus.completed) {
                  controller.reverse();
                } else {
                  controller.forward();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
