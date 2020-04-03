// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/api/firebase.dart';
import 'package:web_dashboard/src/auth/firebase_auth_service.dart';
import 'package:web_dashboard/src/auth/mock_auth_service.dart';

import 'api/mock.dart';
import 'auth/auth_service.dart';
import 'models/app_state.dart';
import 'pages/home.dart';
import 'pages/sign_in.dart';

/// Returns a new [Auth] for this app. Can be set to a [FirebaseAuthService] or
/// [MockAuthService].
Auth _createAuth() => MockAuthService();

/// Returns a new [DashboardApi] for this app. Can be set to a
/// [FirebaseDashboardApi] or [MockDashboardApi].
DashboardApi _createDashboardApi(User user) =>
    MockDashboardApi()..fillWithMockData();

/// An app that shows a responsive dashboard.
class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  AppState _appState;

  void initState() {
    super.initState();

    _appState = AppState(_createAuth());
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppState>(create: (_) => _appState),
      ],
      child: MaterialApp(
        home: Builder(
          builder: (context) => SignInPage(
            auth: Provider.of<AppState>(context).auth,
            onSuccess: (User user) => _handleSignedIn(user, context),
          ),
        ),
      ),
    );
  }

  /// Sets the DashboardApi on AppState and navigates to the home page
  ///
  /// The DashboardApi requires a user id in order to make API requests, so it
  /// isn't created until the user has logged in
  void _handleSignedIn(User user, BuildContext context) {
    Provider.of<AppState>(context, listen: false).api =
        _createDashboardApi(user);

    _showHomePage(context);
  }

  /// Navigates to the home page using a fade transition
  void _showHomePage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder<FadeTransition>(
        pageBuilder: (context, animation, secondaryAnimation) {
          return HomePage();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var curveTween = CurveTween(curve: Curves.ease);

          return FadeTransition(
            opacity: animation.drive(curveTween),
            child: child,
          );
        },
      ),
    );
  }
}
