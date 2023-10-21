// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/preferences.dart';
import 'package:veggieseasons/screens/home.dart';
import 'package:veggieseasons/styles.dart';
import 'package:veggieseasons/widgets/fade_transition_page.dart';
import 'package:window_size/window_size.dart';

import 'screens/details.dart';
import 'screens/favorites.dart';
import 'screens/list.dart';
import 'screens/search.dart';
import 'screens/settings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  setupWindow();

  runApp(
    const RootRestorationScope(
      restorationId: 'root',
      child: VeggieApp(),
    ),
  );
}

const double windowWidth = 480;
const double windowHeight = 854;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    setWindowTitle('Veggie Seasons');
    setWindowMinSize(const Size(windowWidth, windowHeight));
    setWindowMaxSize(const Size(windowWidth, windowHeight));
    getCurrentScreen().then((screen) {
      setWindowFrame(Rect.fromCenter(
        center: screen!.frame.center,
        width: windowWidth,
        height: windowHeight,
      ));
    });
  }
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class VeggieApp extends StatefulWidget {
  const VeggieApp({super.key});

  @override
  State<StatefulWidget> createState() => _VeggieAppState();
}

class _VeggieAppState extends State<VeggieApp> with RestorationMixin {
  final _RestorableAppState _appState = _RestorableAppState();

  @override
  String get restorationId => 'wrapper';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_appState, 'state');
  }

  @override
  void dispose() {
    _appState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: _appState.value,
        ),
        ChangeNotifierProvider(
          create: (_) => Preferences()..load(),
        ),
      ],
      child: CupertinoApp.router(
        theme: Styles.veggieThemeData,
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        routerConfig: GoRouter(
          navigatorKey: _rootNavigatorKey,
          restorationScopeId: 'router',
          initialLocation: '/list',
          redirect: (context, state) {
            if (state.path == '/') {
              return '/list';
            }
            return null;
          },
          debugLogDiagnostics: true,
          routes: [
            ShellRoute(
              navigatorKey: _shellNavigatorKey,
              pageBuilder: (context, state, child) {
                return CupertinoPage(
                  restorationId: 'router.shell',
                  child: HomeScreen(
                    restorationId: 'home',
                    child: child,
                    onTap: (index) {
                      if (index == 0) {
                        context.go('/list');
                      } else if (index == 1) {
                        context.go('/favorites');
                      } else if (index == 2) {
                        context.go('/search');
                      } else {
                        context.go('/settings');
                      }
                    },
                  ),
                );
              },
              routes: [
                GoRoute(
                  path: '/list',
                  pageBuilder: (context, state) {
                    return FadeTransitionPage(
                      key: state.pageKey,
                      restorationId: 'route.list',
                      child: const ListScreen(restorationId: 'list'),
                    );
                  },
                  routes: [
                    _buildDetailsRoute(),
                  ],
                ),
                GoRoute(
                  path: '/favorites',
                  pageBuilder: (context, state) {
                    return FadeTransitionPage(
                      key: state.pageKey,
                      restorationId: 'route.favorites',
                      child: const FavoritesScreen(restorationId: 'favorites'),
                    );
                  },
                  routes: [
                    _buildDetailsRoute(),
                  ],
                ),
                GoRoute(
                  path: '/search',
                  pageBuilder: (context, state) {
                    return FadeTransitionPage(
                      key: state.pageKey,
                      restorationId: 'route.search',
                      child: const SearchScreen(restorationId: 'search'),
                    );
                  },
                  routes: [
                    _buildDetailsRoute(),
                  ],
                ),
                GoRoute(
                  path: '/settings',
                  pageBuilder: (context, state) {
                    return FadeTransitionPage(
                      key: state.pageKey,
                      restorationId: 'route.settings',
                      child: const SettingsScreen(restorationId: 'settings'),
                    );
                  },
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: 'categories',
                      pageBuilder: (context, state) {
                        return VeggieCategorySettingsScreen.pageBuilder(
                            context);
                      },
                    ),
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: 'calories',
                      pageBuilder: (context, state) {
                        return CalorieSettingsScreen.pageBuilder(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // GoRouter does not support relative routes,
  // see https://github.com/flutter/flutter/issues/108177
  GoRoute _buildDetailsRoute() {
    return GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: 'details/:id',
      pageBuilder: (context, state) {
        final veggieId = int.parse(state.pathParameters['id']!);
        return CupertinoPage(
          restorationId: 'route.details',
          fullscreenDialog: true,
          child: DetailsScreen(
            id: veggieId,
            restorationId: 'details',
          ),
        );
      },
    );
  }
}

class _RestorableAppState extends RestorableListenable<AppState> {
  @override
  AppState createDefaultValue() {
    return AppState();
  }

  @override
  AppState fromPrimitives(Object? data) {
    final appState = AppState();
    final favorites = (data as List<dynamic>).cast<int>();
    for (var id in favorites) {
      appState.setFavorite(id, true);
    }
    return appState;
  }

  @override
  Object toPrimitives() {
    return value.favoriteVeggies.map((veggie) => veggie.id).toList();
  }
}
