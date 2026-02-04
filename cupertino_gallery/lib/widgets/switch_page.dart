import 'package:flutter/cupertino.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Switch'),
      ),
      child: Center(
        child: CupertinoSwitch(
          value: _value,
          onChanged: (bool value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
