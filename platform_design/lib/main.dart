import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'tab_1.dart';
import 'tab_2.dart';
import 'tab_3.dart';
import 'tab_4.dart';
import 'widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Change this value to better see animations.
    timeDilation = 1;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      builder: (BuildContext context, Widget child) {
        return CupertinoTheme(
          data: CupertinoThemeData(),
          child: Material(child: child),
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

  final tab1AndroidRefreshKey = GlobalKey<RefreshIndicatorState>();

  Widget _buildAndroidDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.green,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Icon(
                Icons.account_circle,
                color: Colors.green.shade800,
                size: 96,
              ),
            ),
          ),
          ListTile(
            leading: tab1AndroidIcon,
            title: Text(tab1Title),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: tab2AndroidIcon,
            title: Text(tab2Title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Tab2(key: tab2Key)
              ));
            },
          ),
          ListTile(
            leading: tab3AndroidIcon,
            title: Text(tab3Title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Tab3()
              ));
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          ListTile(
            leading: tab4AndroidIcon,
            title: Text(tab4Title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Tab4()
              ));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAndroidHomePage(BuildContext context, Widget child) {
    return Tab1(key: tab1Key, androidDrawerBuilder: _buildAndroidDrawer);
  }

  Widget _buildIosHomePage(BuildContext context, Widget child) {
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
          BottomNavigationBarItem(
            title: Text(tab3Title),
            icon: tab3IosIcon,
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
          case 2:
            return CupertinoTabView(
              defaultTitle: tab3Title,
              builder: (BuildContext context) {
                return Tab3();
              },
            );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroidHomePage,
      iosBuilder: _buildIosHomePage,
    );
  }
}
