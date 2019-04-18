import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

const tab4Title = 'Settings';
const tab4AndroidIcon = Icon(Icons.settings);
const tab4IosIcon = Icon(CupertinoIcons.gear);

class Tab4 extends StatefulWidget {
  const Tab4({ Key key }) : super(key: key);

  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  Widget _buildAndroid(BuildContext context, Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tab4Title),
      ),
      body: ListView.builder(
        itemBuilder: _listBuilder,
      ),
    );
  }

  Widget _buildIos(BuildContext context, Widget child) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: ListView.builder(
        itemBuilder: _listBuilder,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
