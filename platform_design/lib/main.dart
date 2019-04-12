import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'tab_1.dart';
import 'tab_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      builder: (BuildContext context, Widget child) {
        return CupertinoTheme(
          data: CupertinoThemeData(),
          child: child,
        );
      },
      home: PlatformAdaptingHomePage(),
    );
  }
}

class PlatformAdaptingHomePage extends StatefulWidget {
  PlatformAdaptingHomePage({ Key key }) : super(key: key);

  @override
  _PlatformAdaptingHomePageState createState() => _PlatformAdaptingHomePageState();
}

class _PlatformAdaptingHomePageState extends State<PlatformAdaptingHomePage> {
  final tab1Key = GlobalKey();
  final tab2Key = GlobalKey();

  Widget _buildAndroidHomePage() {
    return Scaffold(
      appBar: AppBar(title: Text(tab1Title)),
      drawer: Drawer(

      ),
      body: Tab1(key: tab1Key),
    );
  }

  Widget _buildIosHomePage() {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(tab1Title),
            icon: tab1IosIcon,
          ),
          BottomNavigationBarItem(
            title: Text(tab2Title),
            icon: tab2IosIcon,
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              defaultTitle: tab1Title,
              builder: (BuildContext context) {
                return Tab1(key: tab1Key);
              },
            );
          case 1:
            return CupertinoTabView(
              defaultTitle: tab2Title,
              builder: (BuildContext context) {
                return Tab2(key: tab2Key);
              },
            );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return _buildAndroidHomePage();
      case TargetPlatform.iOS:
        return _buildIosHomePage();
    }

    assert(false, 'Unexpected platform');
    return null;
  }
}

