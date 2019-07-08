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
      builder: (context) => InfiniteProcessIsolateController(),
      child: InfiniteProcessPage(),
    );
  }
}

class InfiniteProcessPage extends StatelessWidget {
  @override
  Widget build(context) {
    final controller = Provider.of<InfiniteProcessIsolateController>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          child: Text(
            'Summation Results',
            style: Theme.of(context).textTheme.title,
          ),
          padding: EdgeInsets.all(8),
        ),
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
              radioButtonWidget(context),
            ],
          ),
        ),
      ],
    );
  }
}

class InfiniteProcessIsolateController extends ChangeNotifier {
  Isolate newIsolate;
  ReceivePort mIceRP;
  SendPort newIceSP;
  Capability capability;

  int _currentMultiplier = 1;
  List<int> _currentResults = [];
  bool _running = false;
  bool _paused = false;

  Future<void> createIsolate() async {
    mIceRP = ReceivePort();
    newIsolate = await Isolate.spawn(_secondIsolateEntryPoint, mIceRP.sendPort);
  }

  void listen() {
    mIceRP.listen((dynamic message) {
      if (message is SendPort) {
        newIceSP = message;
        newIceSP.send(_currentMultiplier);
      } else if (message is int) {
        setCurrentResults(message);
      }
    });
  }

  Future<void> start() async {
    if (_running == false && _paused == false) {
      await createIsolate();
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
    super.dispose();
    newIsolate?.kill(priority: Isolate.immediate);
    newIsolate = null;
  }
}

class RunningList extends StatelessWidget {
  @override
  Widget build(context) {
    final controller = Provider.of<InfiniteProcessIsolateController>(context);

    List<int> sums = controller.currentResults;

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
                color: (controller.running && !controller.paused)
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
  int multiplyValue = 1;

  ReceivePort newIceRP = ReceivePort();
  callerSP.send(newIceRP.sendPort);

  newIceRP.listen((dynamic message) {
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
  Random rng = Random();

  return Future(() {
    int sum = 0;

    for (int i = 0; i < num; i++) {
      sum += rng.nextInt(100);
    }
    return sum;
  });
}

Widget newButtons(BuildContext context) {
  final controller =
      Provider.of<InfiniteProcessIsolateController>(context, listen: false);

  return ButtonBar(
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
  );
}

Widget radioButtonWidget(BuildContext context) {
  final controller = Provider.of<InfiniteProcessIsolateController>(context);

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Radio(
        value: 1,
        groupValue: controller.multiplier,
        onChanged: (dynamic _) => controller.setMultiplier(1),
      ),
      Text('1x'),
      Radio(
        value: 2,
        groupValue: controller.multiplier,
        onChanged: (dynamic _) => controller.setMultiplier(2),
      ),
      Text('2x'),
      Radio(
        value: 3,
        groupValue: controller.multiplier,
        onChanged: (dynamic _) => controller.setMultiplier(3),
      ),
      Text('3x'),
    ],
  );
}
