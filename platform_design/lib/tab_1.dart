import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

/// This file feeds the means to navigate to and the content of tab 1 of our
/// app.

const tab1Title = 'Songs';
const tab1IosIcon = Icon(CupertinoIcons.music_note);
const _itemsLength = 50;

class Tab1 extends StatefulWidget {
  const Tab1({ Key key }) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  List<MaterialColor> colors;
  List<String> songNames;

  @override
  void initState() {
    colors = getRandomColors(_itemsLength);
    songNames = getRandomNames(_itemsLength);
    super.initState();
  }

  Widget _listBuilder(BuildContext context, int index) {
    var color = defaultTargetPlatform == TargetPlatform.iOS
        ? colors[index]
        : colors[index].shade400;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: color,
            height: 250,
          ),
          _Banner(songNames[index]),
          _PlayButton(),
        ],
      ),
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 12),
      itemBuilder: _listBuilder,
    );
  }

  Widget _buildIos(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(),
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 12),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_listBuilder),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return _buildAndroid(context);
      case TargetPlatform.iOS:
        return _buildIos(context);
    }

    assert(false, 'Unexpected platform');
    return null;
  }
}

class _Banner extends StatelessWidget {
  const _Banner(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 80,
        color: Colors.black12,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          text,
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black12,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 45),
      child: Icon(Icons.play_arrow, size: 50, color: Colors.black38),
    );
  }
}
