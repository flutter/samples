// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'src/api/firebase.dart';
import 'src/app.dart';
import 'src/auth/firebase.dart';

void main() {
  runApp(
    DashboardApp(
      auth: FirebaseAuthService(),
      apiBuilder: (user) => FirebaseDashboardApi(Firestore.instance, user.uid),
    ),
    // Use this constructor to use mock data.
//    DashboardApp(
//      auth: MockAuthService(),
//      apiBuilder: (user) => MockDashboardApi(),
//    ),
  );
}
