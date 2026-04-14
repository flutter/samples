import 'package:flutter/cupertino.dart';

class PickerPage extends StatelessWidget {
  const PickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Picker'),
      ),
      child: Center(
        child: SizedBox(
          height: 200,
          child: CupertinoPicker(
            itemExtent: 32,
            onSelectedItemChanged: (int index) {},
            children: const <Widget>[
              Text('One'),
              Text('Two'),
              Text('Three'),
            ],
          ),
        ),
      ),
    );
  }
}
