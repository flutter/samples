import 'package:flutter/widgets.dart';

/// Placeholder for the overview page.
///
/// TODO(clocksmith): this page.
class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Image.asset('assets/logo.png'),
          Image.asset('assets/logo.png'),
          Image.asset('assets/logo.png')
        ]);
  }
}