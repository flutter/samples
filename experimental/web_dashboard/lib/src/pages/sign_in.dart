// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import '../auth/auth.dart';

class SignInPage extends StatefulWidget {
  final Auth auth;
  final ValueChanged<User> onSuccess;

  SignInPage({
    @required this.auth,
    @required this.onSuccess,
  });

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Future<bool> _checkSignInFuture;

  @override
  void initState() {
    super.initState();
    _checkSignInFuture = _checkIfSignedIn();
  }

// Check if the user is signed in. If the user is already signed in (for
// example, if they signed in and refreshed the page), invoke the `onSuccess`
// callback right away.
  Future<bool> _checkIfSignedIn() async {
    var alreadySignedIn = await widget.auth.isSignedIn();
    if (alreadySignedIn) {
      var user = await widget.auth.signIn();
      widget.onSuccess(user);
    }
    return alreadySignedIn;
  }

  Future<void> _signIn() async {
    var user = await widget.auth.signIn();
    widget.onSuccess(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<bool>(
          future: _checkSignInFuture,
          builder: (context, snapshot) {
            var alreadySignedIn = snapshot.data;
            if (snapshot.connectionState != ConnectionState.done ||
                alreadySignedIn == true) {
              return CircularProgressIndicator();
            }

            return RaisedButton(
              child: Text('Sign In with Google'),
              onPressed: () => _signIn(),
            );
          },
        ),
      ),
    );
  }
}
