import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'game.dart';

void main() {
  final store = Store<AppState>(
    reducer,
    initialState: AppState.init(),
  );

  runApp(
    StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: Game(store),
      ),
    ),
  );
}
