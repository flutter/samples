// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

class AppLifecycleObserver extends StatefulWidget {
  final Widget child;

  const AppLifecycleObserver({required this.child, super.key});

  @override
  State<AppLifecycleObserver> createState() => _AppLifecycleObserverState();
}

class _AppLifecycleObserverState extends State<AppLifecycleObserver>
    with WidgetsBindingObserver {
  static final _log = Logger('AppLifecycleObserver');

  final ValueNotifier<AppLifecycleState> lifecycleListenable =
      ValueNotifier(AppLifecycleState.inactive);

  @override
  Widget build(BuildContext context) {
    // Using InheritedProvider because we don't want to use Consumer
    // or context.watch or anything like that to listen to this. We want
    // to manually add listeners. We're interested in the _events_ of lifecycle
    // state changes, and not so much in the state itself. (For example,
    // we want to stop sound when the app goes into the background, and
    // restart sound again when the app goes back into focus. We're not
    // rebuilding any widgets.)
    //
    // Provider, by default, throws when one
    // is trying to provide a Listenable (such as ValueNotifier) without using
    // something like ValueListenableProvider. InheritedProvider is more
    // low-level and doesn't have this problem.
    return InheritedProvider<ValueNotifier<AppLifecycleState>>.value(
      value: lifecycleListenable,
      child: widget.child,
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _log.info(() => 'didChangeAppLifecycleState: $state');
    lifecycleListenable.value = state;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _log.info('Subscribed to app lifecycle updates');
  }
}
