import 'package:flutter/material.dart';
import 'fortnightly.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typography Demo',
      home: MyHomePage(title: 'Typography'),
      theme: _kFortnightlyTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black,
    ));
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: FlatButton(
                child: Text(
                  'Fortnightly',
                  style: Theme.of(context).textTheme.display1,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              FortnightlyDemo()));
                },
              ),
            ),
          ),
          Divider(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                'Custom',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final ThemeData _kFortnightlyTheme = _buildFortnightlyTheme();

ThemeData _buildFortnightlyTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  TextTheme theme = base.apply(bodyColor: Colors.black);
  theme = theme.apply(displayColor: Colors.black);

  theme = theme.copyWith(
    display1: base.display1.copyWith(
      fontFamily: 'Merriweather',
      fontStyle: FontStyle.italic,
      fontSize: 28.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
      height: .88,
    ),
    display3: base.display3.copyWith(
      fontFamily: 'LibreFranklin',
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black.withAlpha(153),
    ),
    headline: base.headline.copyWith(fontWeight: FontWeight.w500),
    body1: base.body1.copyWith(
      fontFamily: 'Merriweather',
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Color(0xFF666666),
      height: 1.11,
    ),
    body2: base.body2.copyWith(
      fontFamily: 'Merriweather',
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Color(0xFF666666),
      height: 1.4,
      letterSpacing: .25,
    ),
    overline: TextStyle(
      fontFamily: 'LibreFranklin',
      fontSize: 10.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );

  return theme;
}
