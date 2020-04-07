// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/api/mock.dart';
import 'package:web_dashboard/src/auth/firebase.dart';
import 'package:web_dashboard/src/auth/mock.dart';

import 'api/firebase.dart';
import 'auth/auth.dart';
import 'pages/home.dart';
import 'pages/sign_in.dart';

/// The global state the app.
class AppState {
  final Auth auth;
  DashboardApi api;

  AppState(this.auth);
}

/// Creates a [DashboardApi] when the user is logged in.
typedef DashboardApi ApiBuilder(User user);

/// An app that displays a personalized dashboard.
class DashboardApp extends StatefulWidget {
  static ApiBuilder _mockApiBuilder = (user) => MockDashboardApi();
  static ApiBuilder _apiBuilder =
      (user) => FirebaseDashboardApi(Firestore.instance, user.uid);

  final Auth auth;
  final ApiBuilder apiBuilder;

  /// Runs the app using Firebase
  DashboardApp()
      : auth = FirebaseAuthService(),
        apiBuilder = _apiBuilder;

  /// Runs the app using mock data
  DashboardApp.mock()
      : auth = MockAuthService(),
        apiBuilder = _mockApiBuilder;

  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  AppState _appState;

  void initState() {
    super.initState();
    _appState = AppState(widget.auth);
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _appState,
      child: MaterialApp(
        home: Builder(
          builder: (context) => SignInPage(
            auth: _appState.auth,
            onSuccess: (user) => _handleSignIn(user, context, _appState),
          ),
        ),
      ),
    );
  }

  /// Sets the DashboardApi on AppState and navigates to the home page.
  void _handleSignIn(User user, BuildContext context, AppState appState) {
    appState.api = widget.apiBuilder(user);

    _showPage(HomePage(), context);
  }

  /// Navigates to the home page using a fade transition.
  void _showPage(Widget page, BuildContext context) {
    var route = _fadeRoute(page);
    Navigator.of(context).pushReplacement(route);
  }

  /// Creates a [Route] that shows [newPage] using a fade transition.
  Route _fadeRoute(Widget newPage) {
    return PageRouteBuilder<FadeTransition>(
      pageBuilder: (context, animation, secondaryAnimation) {
        return newPage;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation.drive(CurveTween(curve: Curves.ease)),
          child: child,
        );
      },
    );
  }
}
