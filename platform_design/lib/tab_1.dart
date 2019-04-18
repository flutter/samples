import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

/// This file feeds the means to navigate to and the content of tab 1 of our
/// app.

const tab1Title = 'Songs';
const tab1AndroidIcon = Icon(Icons.music_note);
const tab1IosIcon = Icon(CupertinoIcons.music_note);
const _itemsLength = 50;

class Tab1 extends StatefulWidget {
  const Tab1({ Key key, this.androidDrawerBuilder }) : super(key: key);

  final WidgetBuilder androidDrawerBuilder;

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  List<MaterialColor> colors;
  List<String> songNames;

  @override
  void initState() {
    _setData();
    super.initState();
  }

  void _setData() {
    colors = getRandomColors(_itemsLength);
    songNames = getRandomNames(_itemsLength);
  }

  Future<void> _refreshData() {
    return Future.delayed(
      const Duration(seconds: 2),
      () => setState(() => _setData()),
    );
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= _itemsLength)
      return null;

    var color = defaultTargetPlatform == TargetPlatform.iOS
        ? colors[index]
        : colors[index].shade400;

    return SafeArea(
      top: false,
      bottom: false,
      child: PressableCard(
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
      ),
    );
  }

  Widget _buildAndroid(BuildContext context, Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tab1Title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async {
              await _androidRefreshKey.currentState.show();

            },
          ),
        ],
      ),
      drawer: widget.androidDrawerBuilder(context),
      body: RefreshIndicator(
        key: _androidRefreshKey,
        onRefresh: _refreshData,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 12),
          itemBuilder: _listBuilder,
        ),
      ),
    );
  }

  Widget _buildIos(BuildContext context, Widget child) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(),
        CupertinoSliverRefreshControl(
          onRefresh: _refreshData,
        ),
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
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
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
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
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
