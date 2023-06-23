import 'dart:convert';
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';
import 'package:flutter/material.dart';

final port = Platform.environment['PORT'] ?? '8080';
final host = Platform.environment['SERVER_URL'] ?? '127.0.0.1';
final scheme = Platform.environment['SERVER_SCHEME'] ?? 'http';
final serverUrl = Uri.parse('$scheme://$host:$port/');

void main() {
  runApp(
    const MyApp(
      getCount: getCount,
      increment: increment,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.getCount,
    required this.increment,
  });

  final Future<int> Function() getCount;
  final Future<int> Function(int) increment;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        getCount: getCount,
        increment: increment,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.getCount,
    required this.increment,
  });

  final String title;
  final Future<int> Function() getCount;
  final Future<int> Function(int) increment;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int localClicks = 0;
  bool isWriting = false;

  @override
  void initState() {
    super.initState();
    widget.getCount().then((int val) => _counter = val);
  }

  void _incrementCounter() {
    localClicks += 1;
    setState(() => isWriting = true);
    widget.increment(localClicks).then(
          (int val) => setState(
            () {
              _counter = val;
              // Leave this up for at least a split second
              Future.delayed(
                const Duration(milliseconds: 200),
                () => setState(() => isWriting = false),
              );
            },
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            if (isWriting) ...[
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Communicating with server...',
                    style: TextStyle(fontSize: 32, color: Colors.blue),
                  ),
                  SizedBox(width: 10),
                  CircularProgressIndicator.adaptive(),
                ],
              ),
            ],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

Future<int> getCount() async {
  return http
      .get(serverUrl)
      .then((resp) => Count.fromJson(json.decode(resp.body)).value);
}

Future<int> increment(int by) async {
  return http
      .post(serverUrl, body: json.encode(Increment(by: by).toJson()))
      .then((resp) => Count.fromJson(json.decode(resp.body)).value);
}
