import 'package:flutter/cupertino.dart';

class SearchTextFieldPage extends StatelessWidget {
  const SearchTextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Search Text Field'),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CupertinoSearchTextField(),
        ),
      ),
    );
  }
}
