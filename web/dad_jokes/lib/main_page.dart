import 'dart:async';
import 'dart:convert';

import 'package:flutter_web/material.dart';
import 'package:http/http.dart' as http;

import 'auto_size_text.dart';

const _dadJokeApi = 'https://icanhazdadjoke.com/';
const _httpHeaders = {
  'Accept': 'application/json',
};

const jokeTextStyle = TextStyle(
    fontFamily: 'Patrick Hand',
    fontSize: 36,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal);

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  Future<String> _response;
  String _displayedJoke = '';

  @override
  void initState() {
    super.initState();
    _refreshAction();
  }

  void _refreshAction() {
    setState(() {
      _response = http.read(_dadJokeApi, headers: _httpHeaders);
    });
  }

  void _aboutAction() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
              title: Text('About Dad Jokes'),
              content: Text(
                  'Dad jokes is brought to you by Tim Sneath (@timsneath), '
                  'proud dad of Naomi, Esther, and Silas. May your children '
                  'groan like mine will.\n\nDad jokes come from '
                  'https://icanhazdadjoke.com with thanks.'));
        });
  }

  FutureBuilder<String> _jokeBody() {
    return FutureBuilder<String>(
      future: _response,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const ListTile(
              leading: Icon(Icons.sync_problem),
              title: Text('No connection'),
            );
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError) {
              return const Center(
                child: ListTile(
                  leading: Icon(Icons.error),
                  title: Text('Network error'),
                  subtitle: Text(
                      'Sorry - this isn\'t funny, we know, but something went '
                      'wrong when connecting to the Internet. Check your '
                      'network connection and try again.'),
                ),
              );
            } else {
              final decoded = json.decode(snapshot.data);
              if (decoded['status'] == 200) {
                _displayedJoke = decoded['joke'] as String;
                return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Dismissible(
                      key: const Key('joke'),
                      direction: DismissDirection.horizontal,
                      onDismissed: (direction) {
                        _refreshAction();
                      },
                      child: AutoSizeText(_displayedJoke, style: jokeTextStyle),
                    ));
              } else {
                return ListTile(
                  leading: const Icon(Icons.sync_problem),
                  title: Text('Unexpected error: ${snapshot.data}'),
                );
              }
            }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'icon.png',
          fit: BoxFit.scaleDown,
        ),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'About Dad Jokes',
            onPressed: _aboutAction,
          ),
        ],
      ),
      body: Center(
        child: SafeArea(child: _jokeBody()),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _refreshAction,
        icon: const Icon(Icons.mood),
        label: const Text('NEW JOKE'),
      ),
    );
  }
}
