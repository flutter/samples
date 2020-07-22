import 'package:federated_plugin/federated_plugin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Federated Plugin Demo'),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                location == null
                    ? SizedBox.shrink()
                    : Text(
                        'Latitude: ${location.latitude}\n'
                        'Longitude: ${location.longitude}',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                SizedBox(height: 16),
                RaisedButton(
                  child: Text('Get Location'),
                  onPressed: () async {
                    try {
                      final result = await getLocation();
                      setState(() {
                        location = result;
                      });
                    } catch (error) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Theme.of(context).primaryColor,
                          content: Text(error.message as String),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
