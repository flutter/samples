import 'package:flutter/cupertino.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text Field'),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CupertinoTextField(
            placeholder: 'Enter text',
          ),
        ),
      ),
    );
  }
}
