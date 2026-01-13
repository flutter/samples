import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// The main application widget for the Fruit Catalog.
class MyApp extends StatefulWidget {
  /// Creates the [MyApp].
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 1;
  void _incrementCounter() {
    setState(() {
      if (_counter > 40) {
        _counter = 1;
      }
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      heightFactor: 1,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            for (int i = 0; i < _counter; i++)
              Text(
                "Hello from Flutter $i",
                style: TextStyle(color: Colors.pink),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 50, 8.0, 8.0),
              child: ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Add to list"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
