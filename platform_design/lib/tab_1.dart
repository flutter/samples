import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'tab_1_detail.dart';
import 'utils.dart';
import 'widgets.dart';

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
      // This is just an arbitrary delay that simulates some network activity.
      const Duration(seconds: 2),
      () => setState(() => _setData()),
    );
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= _itemsLength)
      return null;

    // Show a slightly different color palette. Show poppy-ier colors on iOS
    // due to lighter contrasting bars and tone it down on Android.
    final color = defaultTargetPlatform == TargetPlatform.iOS
        ? colors[index]
        : colors[index].shade400;

    return SafeArea(
      top: false,
      bottom: false,
      child: Hero(
        tag: index,
        child: HeroAnimatingSongCard(
          song: songNames[index],
          color: color,
          heroAnimation: AlwaysStoppedAnimation(0),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Tab1Detail(
              id: index,
              song: songNames[index],
              color: color,
            ),
          )),
        ),
      ),
    );
  }

  // ===========================================================================
  // Non-shared code below because Android and iOS has different:
  // - Scaffolds
  // - Items in the app bar / nav bar
  // - The iOS nav bar is scrollable, Android is not
  // - Pull-to-refresh works differently, and Android has a button to trigger it too
  //
  // And these are all design time choices that doesn't have a single 'right'
  // answer.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context, Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tab1Title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async => await _androidRefreshKey.currentState.show(),
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


