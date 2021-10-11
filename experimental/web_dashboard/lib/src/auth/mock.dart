// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'auth.dart';

class MockAuthService implements Auth {
  @override
  Future<bool> get isSignedIn async => false;

  @override
  Future<User> signIn() async {
    return MockUser();
  }

  @override
  Future signOut() async {
    return null;
  }
}

class MockUser implements User {
  @override
  String get uid => "123";
}
