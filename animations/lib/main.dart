import 'package:flutter/material.dart';
import 'src/basics/animation_controller_demo.dart';
import 'src/misc/expand_card.dart';

void main() => runApp(AnimationsSamples());

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  Demo(this.name, this.route, this.builder);
}

List<Demo> basicDemos = [
  Demo('Animation Controller', AnimationControllerDemo.routeName,
      (context) => AnimationControllerDemo()),
];

List<Demo> miscDemos = [
  Demo('Expandable Card', ExpandCardDemo.routeName,
      (context) => ExpandCardDemo()),
];

Map<String, WidgetBuilder> basicDemoRoutes = Map.fromEntries(
    basicDemos.map((d) => MapEntry(d.route, d.builder)));

Map<String, WidgetBuilder> miscDemoRoutes = Map.fromEntries(
    miscDemos.map((d) => MapEntry(d.route, d.builder)));

Map<String, WidgetBuilder> allRoutes = <String, WidgetBuilder>{
  ...basicDemoRoutes,
  ...miscDemoRoutes,
};

class AnimationsSamples extends StatelessWidget {
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Animations Samples',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: allRoutes,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextStyle _headerStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Examples'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('Basics', style: _headerStyle)),
          ...basicDemos.map((d) => DemoTile(d)),
          ListTile(title: Text('Misc', style: _headerStyle)),
          ...miscDemos.map((d) => DemoTile(d)),
        ],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo demo;

  DemoTile(this.demo);

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        Navigator.pushNamed(context, demo.route);
      },
    );
  }
}
