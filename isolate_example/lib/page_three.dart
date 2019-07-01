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

class DataTransferPageStarter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => DataTransferIsolateController(),
      child: DataTransferPage(),
    );
  }
}

class DataTransferPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Text(
            'Number Generator Progress',
            style: Theme.of(context).textTheme.title,
          ),
          padding: new EdgeInsets.all(8),
        ),
        LinearProgressIndicator(
          value: Provider.of<DataTransferIsolateController>(context)
              .progressPercent,
          backgroundColor: Colors.grey[200],
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
            ],
          ),
        ),
      ],
    );
  }
}

class DataTransferIsolateController extends ChangeNotifier {
  Isolate _newIsolate;
  ReceivePort _mIceRP;
  SendPort _newIceSP;

  List<String> currentProgress = [];
  bool running = false;
  Stopwatch _timer;
  double progressPercent = 0;

  DataTransferIsolateController() {
    createIsolate();
    listen();
  }

  Future<void> createIsolate() async {
    _mIceRP = ReceivePort();
    _newIsolate =
        await Isolate.spawn(_secondIsolateEntryPoint, _mIceRP.sendPort);
  }

  void listen() async {
    _mIceRP.listen((message) {
      if (message is SendPort) _newIceSP = message;

      if (message is int) {
        String formattedTime = '${_timer.elapsedMilliseconds / 1000} Sec';
        currentProgress.insert(0, '$message% - ' + formattedTime);
        progressPercent = message / 100;
      }

      if (message is String && message == 'done') {
        running = false;
        _timer.stop();
      }

      notifyListeners();
    });
  }

  void generateOnSecondaryIsolate() {
    if (running) return;

    running = true;
    _timer = new Stopwatch();
    currentProgress.clear();

    _timer.start();
    _newIceSP.send('Start');

    notifyListeners();
  }

  Future<void> generateRandomNumbers() async {
    if (running) return;

    running = true;
    Random rng = new Random();
    _timer = new Stopwatch();

    currentProgress.clear();
    _timer.start();

    List<int> randNums = [];
    for (int i = 0; i < 100; i++) {
      randNums.clear();

      for (int j = 0; j < 1000000; j++) {
        randNums.add(rng.nextInt(100));
      }
      await sendNumbers(randNums);
    }
  }

  Future<void> sendNumbers(List<int> numList) {
    return Future<void>(() {
      _newIceSP.send(numList);
    });
  }

  Isolate get newIsolate => _newIsolate;

  void dispose() {
    super.dispose();
    _newIsolate?.kill(priority: Isolate.immediate);
    _newIsolate = null;
  }
}

class RunningList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<DataTransferIsolateController>(context);
    List<String> progress = controller.currentProgress;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: new ListView.builder(
        itemCount: progress.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                child: ListTile(
                  title: Text(progress[index]),
                ),
                color: Colors.lightGreenAccent,
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
  List<int> randNums = [];
  ReceivePort newIceRP = ReceivePort();
  callerSP.send(newIceRP.sendPort);

  newIceRP.listen(
    (message) {
      if (message is String && message == 'Start') {
        int sum = 0;
        Random rng = new Random();
        for (int i = 0; i < 100000000; i++) {
          sum += rng.nextInt(100);

          if ((i + 1) % 1000000 == 0) {
            callerSP.send((i + 1) ~/ 1000000);
          }
        }

        callerSP.send('done');
        return sum;
      } else {
        randNums.addAll(message as List<int>);

        callerSP.send(randNums.length ~/ 1000000);

        if (randNums.length == 100000000) {
          callerSP.send('transfer done');
          addUp(randNums);
          callerSP.send('done');
          randNums.clear();
        }
      }
    },
  );
}

int addUp(List<int> numList) {
  int sum = 0;
//  for (int i = 0; i < numList.length; i++) {
  for (int i in numList) {
    sum += i;
  }
  return sum;
}

Widget newButtons(context) {
  final controller =
      Provider.of<DataTransferIsolateController>(context, listen: false);
  return ButtonBar(
    alignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          RaisedButton(
            child: const Text('Transfer Data to 2nd Isolate'),
            elevation: 8.0,
            onPressed: () => controller.generateRandomNumbers(),
          ),
          RaisedButton(
            child: const Text('Generate on 2nd Isolate'),
            elevation: 8.0,
            onPressed: () => controller.generateOnSecondaryIsolate(),
          ),
        ],
      ),
    ],
  );
}
