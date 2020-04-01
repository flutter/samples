import 'package:flutter/material.dart';

class ModalDialogExperiment extends StatelessWidget {
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
