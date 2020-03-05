import 'package:flutter/material.dart';

var otherNav = GlobalKey<NavigatorState>();

main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (_) => HomePage(),
        '/settings': (_) => SettingsPage(),
        '/users': (_) => UsersPage(),
      },
//      onGenerateRoute: (settings) {
//        if (settings.name == "/") {
//          return fastPageRoute(HomePage());
//        }
//        if (settings.name == "/users") {
//          return fastPageRoute(UsersPage());
//        }
//        if (settings.name == "/settings") {
//          return fastPageRoute(SettingsPage());
//        }
//        return fastPageRoute(UnknownPage());
//      },
    ),
  );
}

PageRoute fastPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => page,
    transitionDuration: Duration(milliseconds: 64),
    transitionsBuilder: (_, anim, __, child) {
      return FadeTransition(opacity: anim, child: child);
    },
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Home Page'),
          RaisedButton(
            child: Text('Go to Settings'),
            onPressed: () {
              Navigator.of(context).pushNamed('/settings');
            },
          ),
          RaisedButton(
            child: Text('Go to Users'),
            onPressed: () {
              Navigator.of(context).pushNamed('/users');
            },
          ),
        ],
      ),
    );
  }
}

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Users'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}

class UnknownPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('404!'),
      ),
    );
  }
}
