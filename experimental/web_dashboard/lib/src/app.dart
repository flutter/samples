// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/auth/mock_auth_service.dart';

import 'api/mock.dart';
import 'models/app_state.dart';
import 'pages/home.dart';
import 'pages/sign_in.dart';

/// An app that shows a responsive dashboard.
class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  AppState _appState;

  void initState() {
    super.initState();

    var api = MockDashboardApi()..fillWithMockData();
    var auth = MockAuthService();
    _appState = AppState(api, auth);
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
            onSuccess: HomePage(),
          ),
        ),
      ),
    );
  }
}
