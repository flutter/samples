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
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataTransferPageStarter extends StatelessWidget {
  const DataTransferPageStarter({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataTransferIsolateController(),
      child: const DataTransferPage(),
    );
  }
}

class DataTransferPage extends StatelessWidget {
  const DataTransferPage({super.key});

  @override
  Widget build(context) {
    final controller = Provider.of<DataTransferIsolateController>(context);

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Number Generator Progress',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          LinearProgressIndicator(
            value: controller.progressPercent,
            backgroundColor: Colors.grey[200],
          ),
          const Expanded(
            child: RunningList(),
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: switch (controller.runningTest) {
                    1 => Colors.blueAccent,
                    _ => Colors.blueGrey,
                  },
                ),
                onPressed: () => controller.generateRandomNumbers(false),
                child: const Text('Transfer Data to 2nd Isolate'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: switch (controller.runningTest) {
                    2 => Colors.blueAccent,
                    _ => Colors.blueGrey,
                  },
                ),
                onPressed: () => controller.generateRandomNumbers(true),
                child: const Text('Transfer Data with TransferableTypedData'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: switch (controller.runningTest) {
                    3 => Colors.blueAccent,
                    _ => Colors.blueGrey,
                  },
                ),
                onPressed: controller.generateOnSecondaryIsolate,
                child: const Text('Generate on 2nd Isolate'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataTransferIsolateController extends ChangeNotifier {
  Isolate? _isolate;
  late ReceivePort _incomingReceivePort;
  late SendPort _outgoingSendPort;

  final currentProgress = <String>[];
  int runningTest = 0;
  Stopwatch _timer = Stopwatch();
  double progressPercent = 0;

  bool get running => runningTest != 0;

  DataTransferIsolateController() {
    createIsolate();
    listen();
  }

  Future<void> createIsolate() async {
    _incomingReceivePort = ReceivePort();
    _isolate = await Isolate.spawn(
        _secondIsolateEntryPoint, _incomingReceivePort.sendPort);
  }

  void listen() {
    _incomingReceivePort.listen((dynamic message) {
      switch (message) {
        case SendPort():
          _outgoingSendPort = message;
        case int():
          currentProgress.insert(
              0, '$message% - ${_timer.elapsedMilliseconds / 1000} seconds');
          progressPercent = message / 100;
        case 'done':
          runningTest = 0;
          _timer.stop();
      }

      notifyListeners();
    });
  }

  void generateOnSecondaryIsolate() {
    if (running) return;
    runningTest = 3;
    currentProgress.clear();

    _timer = Stopwatch();
    _timer.start();
    _outgoingSendPort.send('start');

    notifyListeners();
  }

  Future<void> generateRandomNumbers(bool transferableTyped) async {
    if (running) {
      return;
    }

    if (transferableTyped) {
      runningTest = 2;
    } else {
      runningTest = 1;
    }

    var random = Random();

    currentProgress.clear();

    _timer.reset();
    _timer.start();

    var randNums = <int>[];
    for (var i = 0; i < 100; i++) {
      randNums.clear();

      for (var j = 0; j < 1000000; j++) {
        randNums.add(random.nextInt(100));
      }

      if (transferableTyped) {
        final transferable =
            TransferableTypedData.fromList([Int32List.fromList(randNums)]);
        await sendNumbers(transferable);
      } else {
        await sendNumbers(randNums);
      }
    }
  }

  Future<void> sendNumbers(dynamic numList) async {
    return Future<void>(() {
      _outgoingSendPort.send(numList);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _isolate?.kill(priority: Isolate.immediate);
    _isolate = null;
  }
}

class RunningList extends StatelessWidget {
  const RunningList({super.key});

  @override
  Widget build(BuildContext context) {
    final progress =
        Provider.of<DataTransferIsolateController>(context).currentProgress;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: ListView.builder(
        itemCount: progress.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                color: Colors.lightGreenAccent,
                child: ListTile(
                  title: Text(progress[index]),
                ),
              ),
              const Divider(
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

Future<void> _secondIsolateEntryPoint(SendPort sendPort) async {
  var receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);
  var length = 1;

  receivePort.listen(
    (dynamic message) async {
      if (message is String && message == 'start') {
        await generateAndSum(sendPort, createNums(), length);

        sendPort.send('done');
      } else if (message is TransferableTypedData) {
        await generateAndSum(
            sendPort, message.materialize().asInt32List(), length);
        length++;
      } else if (message is List<int>) {
        await generateAndSum(sendPort, message, length);
        length++;
      }

      if (length == 101) {
        sendPort.send('done');
        length = 1;
      }
    },
  );
}

Iterable<int> createNums() sync* {
  var random = Random();
  for (var i = 0; i < 100000000; i++) {
    yield random.nextInt(100);
  }
}

Future<int> generateAndSum(
  SendPort callerSP,
  Iterable<int> iter,
  int length,
) async {
  var sum = 0;
  var count = 1;

  for (var x in iter) {
    sum += x;
    if (count % 1000000 == 0) {
      callerSP.send((count ~/ 1000000) * length);
    }
    count++;
  }

  return sum;
}
