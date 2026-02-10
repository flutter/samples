import 'package:flutter/cupertino.dart';

class ActivityIndicatorPage extends StatelessWidget {
  const ActivityIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Activity Indicator'),
      ),
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
