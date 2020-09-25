// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart' hide FirebaseUser;

import 'auth.dart';

class FirebaseAuthService implements Auth {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> get isSignedIn => _googleSignIn.isSignedIn();

  Future<User> signIn() async {
    try {
      return await _signIn();
    } on PlatformException catch (e) {
      print('Unable to sign in: $e');
      throw SignInException();
    }
  }

  Future<User> _signIn() async {
    GoogleSignInAccount googleUser;
    if (await isSignedIn) {
      googleUser = await _googleSignIn.signInSilently();
    } else {
      googleUser = await _googleSignIn.signIn();
    }

    var googleAuth = await googleUser.authentication;

    var credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    var authResult = await _auth.signInWithCredential(credential);

    return _FirebaseUser(authResult.user.uid);
  }

  Future<void> signOut() async {
    await Future.wait([
      _auth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
}

class _FirebaseUser implements User {
  final String uid;

  _FirebaseUser(this.uid);
}

