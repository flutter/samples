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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:isolate';
import 'dart:math';

class InfiniteProcessPageStarter extends StatelessWidget {
  @override
  Widget build(context) {
    return ChangeNotifierProvider(
      builder: (context) => IsolateController(),
      child: InfiniteProcessPage(),
    );
  }
}

class InfiniteProcessPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: RunningList()),
        SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [newButtons(context)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Switch(
                    value:
                        !(Provider.of<IsolateController>(context, listen: true)
                            .paused),
                    onChanged: (_) =>
                        Provider.of<IsolateController>(context, listen: false)
                            .pausedSwitch(),
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.black,
                    inactiveTrackColor: Colors.deepOrangeAccent,
                    inactiveThumbColor: Colors.black,
                  ),
                  Text('Pause/Resume'),
                ],
              ),
              radioButtonWidget(context),
            ],
          ),
        ),
      ],
    );
  }
}

class IsolateController extends ChangeNotifier {
  Isolate newIsolate;
  ReceivePort mIceRP;
  SendPort newIceSP;
  Capability capability;

  int _currentMultiplier = 1;
  List<int> _currentResults = [];
  bool _running = false;
  bool _paused = false;

  IsolateController() {
    start();
    _running = true;
  }

  void createIsolate() async {
    mIceRP = ReceivePort();
    newIsolate = await Isolate.spawn(_secondIsolateEntryPoint, mIceRP.sendPort);
  }

  void listen() async {
    mIceRP.listen((message) {
      if (message is SendPort) {
        newIceSP = message;
        newIceSP.send(_currentMultiplier);
      } else if (message is int) {
        setCurrentResults(message);
      }
    });
  }

  Future start() async {
    if (_running == false && _paused == false) {
      createIsolate();
      listen();
      _running = true;
      notifyListeners();
    }
  }

  void terminate() {
    newIsolate.kill();
    _running = false;
    _currentResults.clear();
    notifyListeners();
  }

  void pausedSwitch() {
    (_paused) ? newIsolate.resume(capability) : capability = newIsolate.pause();
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

  int get multiplier => _currentMultiplier;

  bool get paused => _paused;

  bool get running => _running;

  List<int> get currentResults => _currentResults;

  void dispose() {
    newIsolate?.kill(priority: Isolate.immediate);
    newIsolate = null;
  }
}

class RunningList extends StatelessWidget {
  @override
  Widget build(context) {
    List<int> sums =
        Provider.of<IsolateController>(context, listen: true).currentResults;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: (Provider.of<IsolateController>(context, listen: true).running ==
                    true &&
                Provider.of<IsolateController>(context, listen: true).paused ==
                    false)
            ? Colors.lightGreenAccent
            : Colors.deepOrangeAccent,
      ),
      child: new ListView.builder(
        itemCount: sums.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text((sums.length - index).toString() +
                '. ' +
                sums[index].toString()),
          );
        },
      ),
    );
  }
}

Future<void> _secondIsolateEntryPoint(SendPort callerSP) async {
  int multiplyValue = 1;

  ReceivePort newIceRP = ReceivePort();
  callerSP.send(newIceRP.sendPort);

  newIceRP.listen((message) {
    if (message is int) multiplyValue = message;
  });

  int forEnd = 10000;
  while (true) {
    int sum = 0;

    for (int i = 0; i < forEnd; i++) {
      sum += await brokenUpComputation(1000);
    }

    forEnd += 10;
    callerSP.send(sum * multiplyValue);
  }
}

Future<int> brokenUpComputation(int num) {
  Random rng = new Random();

  return Future(() {
    int sum = 0;

    for (int i = 0; i < num; i++) {
      sum += rng.nextInt(100);
    }
    return sum;
  });
}

Widget newButtons(context) {
  return ButtonBar(
    alignment: MainAxisAlignment.center,
    children: [
      RaisedButton(
        child: const Text('Start'),
        elevation: 8.0,
        onPressed: () =>
            Provider.of<IsolateController>(context, listen: false).start(),
      ),
      RaisedButton(
        child: const Text('Terminate'),
        elevation: 8.0,
        onPressed: () =>
            Provider.of<IsolateController>(context, listen: false).terminate(),
      ),
    ],
  );
}

Widget radioButtonWidget(context) {
  return new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      new Radio(
        value: 1,
        groupValue:
            Provider.of<IsolateController>(context, listen: true).multiplier,
        onChanged: (_) => Provider.of<IsolateController>(context, listen: false)
            .setMultiplier(1),
      ),
      new Text('1x'),
      new Radio(
        value: 2,
        groupValue:
            Provider.of<IsolateController>(context, listen: true).multiplier,
        onChanged: (_) => Provider.of<IsolateController>(context, listen: false)
            .setMultiplier(2),
      ),
      new Text('2x'),
      new Radio(
        value: 3,
        groupValue:
            Provider.of<IsolateController>(context, listen: true).multiplier,
        onChanged: (_) => Provider.of<IsolateController>(context, listen: false)
            .setMultiplier(3),
      ),
      new Text('3x'),
    ],
  );
}
