import 'package:flutter/cupertino.dart';

class TextThemePage extends StatelessWidget {
  const TextThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Text Theme'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the default text style',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            const SizedBox(height: 16),
            Text(
              'This is the action text style',
              style: CupertinoTheme.of(context).textTheme.actionTextStyle,
            ),
            const SizedBox(height: 16),
            Text(
              'This is the tab label text style',
              style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
            ),
            const SizedBox(height: 16),
            Text(
              'This is the nav title text style',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            const SizedBox(height: 16),
            Text(
              'This is the nav large title text style',
              style: CupertinoTheme.of(context)
                  .textTheme
                  .navLargeTitleTextStyle,
            ),
            const SizedBox(height: 16),
            Text(
              'This is the picker text style',
              style: CupertinoTheme.of(context).textTheme.pickerTextStyle,
            ),
            const SizedBox(height: 16),
            Text(
              'This is the date time picker text style',
              style:
                  CupertinoTheme.of(context).textTheme.dateTimePickerTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
