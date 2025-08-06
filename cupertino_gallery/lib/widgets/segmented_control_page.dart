import 'package:flutter/cupertino.dart';

class SegmentedControlPage extends StatefulWidget {
  const SegmentedControlPage({super.key});

  @override
  State<SegmentedControlPage> createState() => _SegmentedControlPageState();
}

class _SegmentedControlPageState extends State<SegmentedControlPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Segmented Control'),
      ),
      child: Center(
        child: CupertinoSegmentedControl<int>(
          children: const <int, Widget>{
            0: Text('One'),
            1: Text('Two'),
            2: Text('Three'),
          },
          onValueChanged: (int val) {
            setState(() {
              _selectedIndex = val;
            });
          },
          groupValue: _selectedIndex,
        ),
      ),
    );
  }
}
