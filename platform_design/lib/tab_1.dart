import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'tab_1_detail.dart';
import 'utils.dart';
import 'widgets.dart';

class Tab1 extends StatefulWidget {
  static const title = 'Songs';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Icon(CupertinoIcons.music_note);

  const Tab1({ Key key, this.androidDrawerBuilder, this.platformOverride })
      : super(key: key);

  final WidgetBuilder androidDrawerBuilder;
  final ValueNotifier<TargetPlatform> platformOverride;

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  static const _itemsLength = 50;

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

  Widget _listBuilder(var context, var index) {
    if (index >= _itemsLength)
      return null;

    // Show a slightly different color palette. Show poppy-ier colors on iOS
    // due to lighter contrasting bars and tone it down on Android.
    final color = Theme.of(context).platform == TargetPlatform.iOS
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
            builder: (var context) => Tab1Detail(
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
  // Non-shared code below because Android and iOS have different:
  // - Scaffolds
  // - Items in the app bar / nav bar
  // - The iOS nav bar is scrollable, Android is not
  // - Pull-to-refresh works differently, and Android has a button to trigger it too
  //
  // And these are all design time choices that doesn't have a single 'right'
  // answer.
  // ===========================================================================

  TargetPlatform _getOppositePlatform() {
    if (widget.platformOverride.value == TargetPlatform.iOS) {
      return TargetPlatform.android;
    } else {
      return TargetPlatform.iOS;
    }
  }

  Widget _buildAndroid(var context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Tab1.title),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async => await _androidRefreshKey.currentState.show(),
          ),
          IconButton(
            icon: Icon(Icons.shuffle),
            onPressed: () => widget.platformOverride.value = _getOppositePlatform(),
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

  Widget _buildIos(var context) {
    return CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(CupertinoIcons.shuffle),
            onPressed: () => widget.platformOverride.value = _getOppositePlatform(),
          ),
        ),
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
  Widget build(var context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
