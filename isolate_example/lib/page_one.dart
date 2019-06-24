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
            padding: EdgeInsets.only(top: 150.0),
            child: Column(
              children: <Widget>[
                FutureBuilder<void>(
                  future: computeFuture,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return RaisedButton(
                      child: const Text('Compute on Main'),
                      elevation: 8.0,
                      onPressed: (snapshot.connectionState ==
                          ConnectionState.done) ? () {
                              setState( () {
                                computeFuture = computeOnMainIsolate()
                                    ..then( (_) {
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
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return RaisedButton(
                      child: const Text('Compute on Secondary'),
                      elevation: 8.0,
                      onPressed: (snapshot.connectionState ==
                              ConnectionState.done) ? () {
                              setState( () {
                                  computeFuture = computeOnSecondaryIsolate()
                                    ..then( (_) {
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

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..addStatusListener( (status) {
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
                colors: <Color>[
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
