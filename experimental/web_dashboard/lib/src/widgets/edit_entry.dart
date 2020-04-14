import 'package:flutter/material.dart';

class NewEntryDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('New Entry'),
      children: <Widget>[
        Text('new Entry'),
      ],
    );
  }
}
