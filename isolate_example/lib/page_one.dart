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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Computes the nth number in the Fibonacci sequence.
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
        children: [
          SmoothAnimationWidget(),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 150),
            child: Column(
              children: [
                FutureBuilder<void>(
                  future: computeFuture,
                  builder: (context, snapshot) {
                    return RaisedButton(
                      child: const Text('Compute on Main'),
                      elevation: 8.0,
                      onPressed: createMainIsolateCallBack(context, snapshot),
                    );
                  },
                ),
                FutureBuilder<void>(
                  future: computeFuture,
                  builder: (context, snapshot) {
                    return RaisedButton(
                      child: const Text('Compute on Secondary'),
                      elevation: 8.0,
                      onPressed:
                          createSecondaryIsolateCallBack(context, snapshot),
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

  VoidCallback createMainIsolateCallBack(
    BuildContext context,
    AsyncSnapshot snapshot,
  ) {
    if (snapshot.connectionState == ConnectionState.done) {
      return () {
        setState(() {
          computeFuture = computeOnMainIsolate()
            ..then((_) {
              final snackBar = SnackBar(
                content: Text('Main Isolate Done!'),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            });
        });
      };
    } else {
      return null;
    }
  }

  VoidCallback createSecondaryIsolateCallBack(
      BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return () {
        setState(() {
          computeFuture = computeOnSecondaryIsolate()
            ..then((_) {
              final snackBar = SnackBar(
                content: Text('Secondary Isolate Done!'),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            });
        });
      };
    } else {
      return null;
    }
  }

  Future<void> computeOnMainIsolate() async {
    // A delay is added here to give Flutter the chance to redraw the UI at least
    // once before the computation (which, since it's run on the main isolate,
    // will lock up the app) begins executing.
    await Future.delayed(
      Duration(milliseconds: 100),
      () => fib(45),
    );
  }

  Future<void> computeOnSecondaryIsolate() async {
    // Compute the Fibonacci series on a secondary isolate.
    await compute(fib, 45);
  }
}

class SmoothAnimationWidget extends StatefulWidget {
  @override
  SmoothAnimationWidgetState createState() => SmoothAnimationWidgetState();
}

class SmoothAnimationWidgetState extends State<SmoothAnimationWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<BorderRadius> _borderAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _borderAnimation = BorderRadiusTween(
      begin: BorderRadius.circular(100.0),
      end: BorderRadius.circular(0.0),
    ).animate(_controller);

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _borderAnimation,
        builder: (context, child) {
          return Container(
            child: FlutterLogo(
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
                  Colors.redAccent,
                ],
              ),
              borderRadius: _borderAnimation.value,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
