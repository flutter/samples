import 'package:flutter/cupertino.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Button')),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'CupertinoButton widget',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            const SizedBox(height: 16),
            CupertinoButton(child: const Text('Enabled'), onPressed: () {}),
            const SizedBox(height: 16),
            const CupertinoButton(onPressed: null, child: Text('Disabled')),
            const SizedBox(height: 32),
            Text(
              'CupertinoButton.filled widget',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              child: const Text('Enabled'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            const CupertinoButton.filled(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ],
        ),
      ),
    );
  }
}
