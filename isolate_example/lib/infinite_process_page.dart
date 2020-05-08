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

import 'dart:isolate';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfiniteProcessPageStarter extends StatelessWidget {
  @override
  Widget build(context) {
    return ChangeNotifierProvider(
      create: (context) => InfiniteProcessIsolateController(),
      child: InfiniteProcessPage(),
    );
  }
}

class InfiniteProcessPage extends StatelessWidget {
  @override
  Widget build(context) {
    final controller = Provider.of<InfiniteProcessIsolateController>(context);

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Summation Results',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: RunningList(),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: const Text('Start'),
                    elevation: 8.0,
                    onPressed: () => controller.start(),
                  ),
                  RaisedButton(
                    child: const Text('Terminate'),
                    elevation: 8.0,
                    onPressed: () => controller.terminate(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: !controller.paused,
                    onChanged: (_) => controller.pausedSwitch(),
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.black,
                    inactiveTrackColor: Colors.deepOrangeAccent,
                    inactiveThumbColor: Colors.black,
                  ),
                  Text('Pause/Resume'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 1; i <= 3; i++) ...[
                    Radio<int>(
                      value: i,
                      groupValue: controller.currentMultiplier,
                      onChanged: (val) => controller.setMultiplier(val),
                    ),
                    Text('${i}x')
                  ],
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfiniteProcessIsolateController extends ChangeNotifier {
  Isolate newIsolate;
  ReceivePort receivePort;
  SendPort newIceSP;
  Capability capability;

  int _currentMultiplier = 1;
  final List<int> _currentResults = [];
  bool _created = false;
  bool _paused = false;

  int get currentMultiplier => _currentMultiplier;

  bool get paused => _paused;

  bool get created => _created;

  List<int> get currentResults => _currentResults;

  Future<void> createIsolate() async {
    receivePort = ReceivePort();
    newIsolate =
        await Isolate.spawn(_secondIsolateEntryPoint, receivePort.sendPort);
  }

  void listen() {
    receivePort.listen((dynamic message) {
      if (message is SendPort) {
        newIceSP = message;
        newIceSP.send(_currentMultiplier);
      } else if (message is int) {
        setCurrentResults(message);
      }
    });
  }

  Future<void> start() async {
    if (_created == false && _paused == false) {
      await createIsolate();
      listen();
      _created = true;
      notifyListeners();
    }
  }

  void terminate() {
    newIsolate.kill();
    _created = false;
    _currentResults.clear();
    notifyListeners();
  }

  void pausedSwitch() {
    if (_paused) {
      newIsolate.resume(capability);
    } else {
      capability = newIsolate.pause();
    }

    _paused = !_paused;
    notifyListeners();
  }

  void setMultiplier(int newMultiplier) {
    _currentMultiplier = newMultiplier;
    newIceSP.send(_currentMultiplier);
    notifyListeners();
  }

  void setCurrentResults(int newNum) {
    _currentResults.insert(0, newNum);
    notifyListeners();
  }

  @override
  void dispose() {
    newIsolate?.kill(priority: Isolate.immediate);
    newIsolate = null;
    super.dispose();
  }
}

class RunningList extends StatelessWidget {
  @override
  Widget build(context) {
    final controller = Provider.of<InfiniteProcessIsolateController>(context);

    var sums = controller.currentResults;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: ListView.builder(
        itemCount: sums.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                child: ListTile(
                  leading: Text('${sums.length - index}.'),
                  title: Text('${sums[index]}.'),
                ),
                color: (controller.created && !controller.paused)
                    ? Colors.lightGreenAccent
                    : Colors.deepOrangeAccent,
              ),
              Divider(
                color: Colors.blue,
                height: 3,
              ),
            ],
          );
        },
      ),
    );
  }
}

Future<void> _secondIsolateEntryPoint(SendPort callerSP) async {
  var multiplyValue = 1;

  var newIceRP = ReceivePort();
  callerSP.send(newIceRP.sendPort);

  newIceRP.listen((dynamic message) {
    if (message is int) {
      multiplyValue = message;
    }
  });

  // This runs until the isolate is terminated.
  while (true) {
    var sum = 0;

    for (var i = 0; i < 10000; i++) {
      sum += await doSomeWork();
    }

    callerSP.send(sum * multiplyValue);
  }
}

Future<int> doSomeWork() {
  var rng = Random();

  return Future(() {
    var sum = 0;

    for (var i = 0; i < 1000; i++) {
      sum += rng.nextInt(100);
    }

    return sum;
  });
}
