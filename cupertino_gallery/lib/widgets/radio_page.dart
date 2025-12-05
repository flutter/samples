import 'package:flutter/cupertino.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Radio')),
      child: Center(
        child: RadioGroup(
          groupValue: _selectedValue,
          onChanged: (int? value) {
            setState(() {
              _selectedValue = value!;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoListTile(
                title: const Text('Option 1'),
                leading: CupertinoRadio<int>(value: 0),
              ),
              CupertinoListTile(
                title: const Text('Option 2'),
                leading: CupertinoRadio<int>(value: 1),
              ),
              CupertinoListTile(
                title: const Text('Option 3'),
                leading: CupertinoRadio<int>(value: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
