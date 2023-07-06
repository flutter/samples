import 'package:flutter_rocket_example/views/counter_view.dart';
import 'package:flutter_rocket_example/views/mini_view.dart';
import 'package:flutter_rocket_example/views/photo_view.dart';
import 'package:flutter_rocket_example/views/post_view.dart';
import 'package:flutter_rocket_example/views/todos_view.dart';
import 'package:flutter_rocket_example/views/user_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: <String, WidgetBuilder>{
          '/miniView': (BuildContext context) => MiniView(
                title: "MiniView Example",
              ),
          '/counter': (BuildContext context) => CounterExample(
                title: "Counter",
              ),
          '/user': (BuildContext context) => UserExample(
                title: "10 Users",
              ),
          '/post': (BuildContext context) => PostExample(
                title: "100 Posts",
              ),
          '/photo': (BuildContext context) => PhotoExample(
                title: "5000 Photos",
              ),
          '/todo': (BuildContext context) => TodosExample(
                title: "200 Todos",
              ),
        },
        title: '🚀 Rocket Package 🚀',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyApp());
  }
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  final ValueNotifier<double> dx = ValueNotifier<double>(0.1);
  int index = 0;
  MyApp({Key? key}) : super(key: key) {
    const String baseUrl = 'https://jsonplaceholder.typicode.com';
    // create request object
    RocketClient request = RocketClient(url: baseUrl);
    // save it, for use from any screen
    Rocket.add(request);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🚀 Rocket Package 🚀'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: context.height * 0.8,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '🚀 Rocket Package 🚀',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
              Example("Mini View", "miniView"),
              Example("Counter View", "counter"),
              Example("10 Users", "user"),
              Example("100 Posts", "post"),
              Example("5000 Photos", "photo"),
              Example("200 Todos", "todo"),
            ],
          ),
        ),
      ),
    );
  }
}

class Example extends StatelessWidget {
  final String title, to;
  const Example(this.title, this.to, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.6,
      height: context.height * 0.1,
      child: TextButton(
          key: Key(to),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.brown),
          ),
          onPressed: () => Navigator.pushNamed(context, "/$to")),
    );
  }
}

extension SizeDevice on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
