import 'package:flutter/material.dart';

void main() {
  runApp(ModalDialogSample());
}

class ModalDialogSample extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) => Center(
            child: RaisedButton(
              child: Text('Open Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  child: SimpleDialog(
                    children: [
                      Text('Hello, '),
                      Text('World!'),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
