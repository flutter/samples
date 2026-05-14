import 'package:flutter/cupertino.dart';

class SlidingSegmentedControlPage extends StatefulWidget {
  const SlidingSegmentedControlPage({super.key});

  @override
  State<SlidingSegmentedControlPage> createState() =>
      _SlidingSegmentedControlPageState();
}

class _SlidingSegmentedControlPageState
    extends State<SlidingSegmentedControlPage> {
  int? _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Sliding Segmented Control'),
      ),
      child: Center(
        child: CupertinoSlidingSegmentedControl<int>(
          children: const <int, Widget>{
            0: Text('One'),
            1: Text('Two'),
            2: Text('Three'),
          },
          onValueChanged: (int? value) {
            setState(() {
              _groupValue = value;
            });
          },
          groupValue: _groupValue,
        ),
      ),
    );
  }
}
