import 'package:flutter/material.dart';

class PageRouteBuilderDemo extends StatelessWidget {
  static const String routeName = '/basics/page_route_builder';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          child: Text('Go!', style: TextStyle(color: Colors.white)),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context).push(_route());
          },
        ),
      ),
    );
  }
}

Route _route() {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => _Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero);
      var curveTween = CurveTween(curve: Curves.ease);

      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}

class _Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
