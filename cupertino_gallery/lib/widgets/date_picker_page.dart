import 'package:flutter/cupertino.dart';

class DatePickerPage extends StatelessWidget {
  const DatePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Date Picker'),
      ),
      child: Center(
        child: SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            onDateTimeChanged: (DateTime newDate) {},
          ),
        ),
      ),
    );
  }
}
