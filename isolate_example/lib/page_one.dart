import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PerformancePage extends StatefulWidget {
  @override
  _PerformancePageState createState() => _PerformancePageState();
}

class _PerformancePageState extends State<PerformancePage> {
  Future<void> computeFuture = Future.value();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SmoothAnimationWidget(),
          Container(
            alignment: Alignment.bottomCenter,
            padding:
                EdgeInsets.only(left: 0.0, top: 150.0, right: 0.0, bottom: 0.0),
            child: Column(
              children: <Widget>[
                FutureBuilder<void>(
                  future: computeFuture,
                  builder: (context, snapshot) {
                    return RaisedButton(
                      child: const Text('Compute on Main'),
                      elevation: 8.0,
                      onPressed: (snapshot.connectionState ==
                              ConnectionState.done)
                          ? () {
                              setState(
                                () {
                                  computeFuture = computeOnMainIsolate()
                                    ..then(
                                      (_) {
                                        final snackBar1 = SnackBar(
                                          content: Text('Main Isolate Done!'),
                                        );
                                        Scaffold.of(context)
                                            .showSnackBar(snackBar1);
                                      },
                                    );
                                },
                              );
                            }
                          : null,
                    );
                  },
                ),
                FutureBuilder<void>(
                  future: computeFuture,
                  builder: (context, snapshot) {
                    return RaisedButton(
                      child: const Text('Compute on Secondary'),
                      elevation: 8.0,
                      onPressed: (snapshot.connectionState ==
                              ConnectionState.done)
                          ? () {
                              setState(
                                () {
                                  computeFuture = computeOnSecondaryIsolate()
                                    ..then(
                                      (_) {
                                        final snackBar1 = SnackBar(
                                          content:
                                              Text('Secondary Isolate Done!'),
                                        );
                                        Scaffold.of(context)
                                            .showSnackBar(snackBar1);
                                      },
                                    );
                                },
                              );

                              final snackBar = SnackBar(
                                content: Text('Start on Secondary Isolate'),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          : null,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> computeOnMainIsolate() async {
  await Future.delayed(Duration(milliseconds: 200), () => fib(45));
}

Future<void> computeOnSecondaryIsolate() async {
  await compute(fib, 45);
}

int fib(int n) {
  int number1 = n - 1;
  int number2 = n - 2;

  if (n == 1) {
    return 0;
  } else if (n == 0) {
    return 1;
  } else {
    return (fib(number1) + fib(number2));
  }
}

class SmoothAnimationWidget extends StatefulWidget {
  @override
  SmoothAnimationWidgetState createState() => SmoothAnimationWidgetState();
}

class SmoothAnimationWidgetState extends State<SmoothAnimationWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  var borderRadius;
  var transitionTween;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                _controller.reverse();
              } else if (status == AnimationStatus.dismissed) {
                _controller.forward();
              }
            },
          );

    borderRadius = BorderRadiusTween(
      begin: BorderRadius.circular(100.0),
      end: BorderRadius.circular(0.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: borderRadius,
      builder: (BuildContext context, Widget child) {
        return Center(
          child: Container(
            child: new FlutterLogo(
              size: 200,
            ),
            alignment: Alignment.bottomCenter,
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Colors.blueAccent,
                  Colors.redAccent
                ], // whitish to gray
              ),
              borderRadius: borderRadius.value,
            ),
          ),
        );
      },
    );
  }
}
