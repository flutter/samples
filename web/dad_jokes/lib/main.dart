import 'package:flutter_web/material.dart';
import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dad Jokes',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MainPage(title: 'Dad Jokes'),
    );
  }
}
