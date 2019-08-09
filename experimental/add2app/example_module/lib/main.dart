import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Module Title',
      routes: {
        '/': (context) => FullScreenView(),
        '/mini': (context) => MiniView(),
      },
    );
  }
}

class FullScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A Full-screen Flutter View'),
      ),
      body: MiniView(),
    );
  }
}

class MiniView extends StatefulWidget {
  @override
  _MiniViewState createState() => _MiniViewState();
}

class _MiniViewState extends State<MiniView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final mediaInfo = MediaQuery.of(context);

    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .25,
              child: FittedBox(
                fit: BoxFit.cover,
                child: FlutterLogo(),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Window is ${mediaInfo.size.width} x '
                  '${mediaInfo.size.height}.',
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(height: 16),
                Text(
                  'Taps: $count',
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(height: 16),
                RaisedButton(
                  onPressed: () => setState(() => count++),
                  child: Text('Tap me!'),
                ),
                SizedBox(height: 16),
                RaisedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Exit this screen'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
