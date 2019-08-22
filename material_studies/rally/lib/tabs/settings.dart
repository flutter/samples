import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//import '../data.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
//  List<Widget> items = DummyDataService.getSettingsTitles()
//      .map((String title) => _SettingsItem(title))
//      .toList();

  @override
  Widget build(BuildContext context) {
    return ListView(children: []);
//    return ListView(children: items);
  }
}

//class _SettingsItem extends StatelessWidget {
//  _SettingsItem(this.title);
//
//  final String title;
//
//  @override
//  Widget build(BuildContext context) {
//    return FlatButton(
//      textColor: Colors.white,
//      child: SizedBox(
//        height: 60.0,
//        child: Row(children: <Widget>[
//          Text(title),
//        ]),
//      ), onPressed: () {},
//    );
//  }
//}
