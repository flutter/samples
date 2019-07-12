import 'package:flutter/material.dart';

class AnimationControllerDemo extends StatefulWidget {
  static const String routeName = '/basics/animation_controller';

  _AnimationControllerDemoState createState() =>
      _AnimationControllerDemoState();
}

class _AnimationControllerDemoState extends State<AnimationControllerDemo>
    with SingleTickerProviderStateMixin {
  static const Duration _duration = Duration(seconds: 1);
  AnimationController controller;

  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: _duration)
      ..addListener(() {
        // Force build() to be called again
        setState(() {});
      });
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
              child: Text('${controller.value.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 24)),
            ),
            MaterialButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'animate',
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
