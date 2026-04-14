import 'package:flutter/cupertino.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Slider'),
      ),
      child: Center(
        child: CupertinoSlider(
          value: _value,
          onChanged: (double value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
