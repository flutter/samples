// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../model/user/user.dart';

abstract final class Constants {
  /// Email for the hardcoded login.
  static const email = 'email@example.com';

  /// Password for the hardcoded login.
  static const password = 'password';

  /// Token to be returned on successful login.
  static const token =
      ' e1c37dfd973353b78bb71df050e2c6e72d53034e148920383968ae49b96f1fd2';

  /// User id to be returned on successful login.
  static const userId = '123';

  /// User name for the hardcoded user.
  static const name = 'Sofie';

  /// For demo purposes we use a local asset.
  static const picture = 'assets/user.jpg';

  /// Hardcoded user.
  static const user = User(
    id: Constants.userId,
    name: Constants.name,
    email: Constants.email,
    picture: Constants.picture,
  );
}
