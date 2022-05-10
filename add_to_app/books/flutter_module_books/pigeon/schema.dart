// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_module_books/api.dart';
import 'package:pigeon/pigeon.dart';

@FlutterApi()
abstract class FlutterBookApi {
  void displayBookDetails(Book book);
}

@HostApi()
abstract class HostBookApi {
  void cancel();
  void finishEditingBook(Book book);
}
