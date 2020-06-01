// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math';

import 'auth.dart';

class MockAuthService implements Auth {
  Future<bool> get isSignedIn async => false;

  @override
  Future<User> signIn() async {
    // Sign in will randomly fail 25% of the time.
    var random = Random();
    if (random.nextInt(4) == 0)  {
      throw SignInException();
    }
    return MockUser();
  }

  @override
  Future signOut() async {
    return null;
  }
}

class MockUser implements User {
  String get uid => "123";
}
