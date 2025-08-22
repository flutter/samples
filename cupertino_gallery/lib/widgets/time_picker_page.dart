import 'package:flutter/cupertino.dart';

class TimePickerPage extends StatelessWidget {
  const TimePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Time Picker'),
      ),
      child: Center(
        child: SizedBox(
          height: 200,
          child: CupertinoTimerPicker(
            onTimerDurationChanged: (Duration newDuration) {},
          ),
        ),
      ),
    );
  }
}
