// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/api/firebase.dart';
import 'package:web_dashboard/src/auth/firebase_auth_service.dart';

import 'auth/auth_service.dart';
import 'models/app_state.dart';
import 'pages/home.dart';
import 'pages/sign_in.dart';

/// Returns a new [Auth] for this app. This allows switching between
/// [FirebaseAuthService] and [MockAuthService].
Auth _createAuth() => FirebaseAuthService();

/// Returns a new [DashboardApi] for this app. This allows switching between
/// [FirebaseDashboardApi] and [MockDashboardApi].
DashboardApi _createDashboardApi(User user) =>
    FirebaseDashboardApi(Firestore.instance, user.uid);

/// An app that shows a responsive dashboard.
class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  AppState _appState;

  void initState() {
    super.initState();

    var auth = _createAuth();
    _appState = AppState(auth);
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

  void _handleSignedIn(User user, BuildContext context) {
    // Set up an API client after the user has logged in and there
    // is a user ID to use for API calls.
    Provider.of<AppState>(context, listen: false).api =
        _createDashboardApi(user);
    Navigator.of(context).pushReplacement(_showHomePageRoute());
  }

  Route _showHomePageRoute() {
    return PageRouteBuilder<FadeTransition>(
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
    );
  }
}
