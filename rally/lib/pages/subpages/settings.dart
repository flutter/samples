import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rally_proto/dummy_data/dummy_data.dart';

/// Placeholder for the settings page.
///
/// TODO(clocksmith): this page.
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<Widget> items = DummyDatas.getSettingsTitles()
      .map((String title) => _SettingsItem(title))
      .toList();

  @override
  Widget build(BuildContext context) {
    return ListView(children: items);
  }
}

class _SettingsItem extends StatelessWidget {
  _SettingsItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Colors.white,
      child: SizedBox(
        height: 60.0,
        child: Row(children: <Widget>[
          Text(title),
        ]),
      ), onPressed: () {},
    );
  }
}
